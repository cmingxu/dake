class Admin::CargoOutsController < Admin::BaseController
  # GET /cargos
  # GET /cargos.json
  def index
    params[:search] ||= {}
    cargo_scope = current_scope
    cargo_scope = cargo_scope.with_created_at_between(Date.strptime(params[:search].fetch('start_at'), "%Y-%m-%d"), Date.strptime(params[:search].fetch('end_at'), "%Y-%m-%d") )  if params[:search].fetch("start_at", "").present? and params[:search].fetch('end_at',"").present?
    cargo_scope = cargo_scope.with_serial_num(params[:search]['serial_num']) if params[:search]['serial_num'].present?
    cargo_scope = cargo_scope.with_to_huozhan(params[:search]['to']) if params[:search]['to'].present?

    @cargos = cargo_scope.page params[:id]
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cargos }
    end
  end

  # GET /cargos/1
  # GET /cargos/1.json
  def show
    @cargo = current_scope.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cargo }
    end
  end

  # GET /cargos/new
  # GET /cargos/new.json
  def new
    @huoyun_route = current_user.huozhan.huoyun_routes.find_by_id(params[:to]) || current_user.huozhan.huoyun_routes.first
    @cargo = current_scope.new
    @cargo.serial_num = Cargo.next_serial_num(current_user.huozhan.id)
    @cargo.huoyun_route = @huoyun_route
    @cargo.siji = @huoyun_route.sicheng
    @cargo.paizhao = @huoyun_route.paizhao
    @cargo.tel = @huoyun_route.tel
    @shippings = current_user.huozhan.ship_outs.with_status("received").with_to_huozhan(@huoyun_route.to_huozhan.huozhan_name).includes(:to_huozhan)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cargo }
    end
  end

  # GET /cargos/1/edit
  def edit
    @cargo = current_scope.find(params[:id])
    @shippings = [@cargo.shippings.includes(:to_huozhan) + current_user.huozhan.ship_outs.with_status("received").with_to_huozhan(@cargo.to_huozhan.huozhan_name).includes(:to_huozhan)].flatten.uniq
  end

  # POST /cargos
  # POST /cargos.json
  def create
    @cargo = current_scope.new(params[:cargo])

    respond_to do |format|
      if @cargo.save
        format.html { redirect_to admin_cargo_outs_path, notice: 'current_scope was successfully created.' }
        format.json { render json: @cargo, status: :created, location: @cargo }
      else
        @shippings = current_user.huozhan.ship_outs.with_status("received").with_to_huozhan(params[:to]).includes(:to_huozhan)
        format.html { render action: "new" }
        format.json { render json: @cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cargos/1
  # PUT /cargos/1.json
  def update
    @cargo = current_scope.find(params[:id])

    respond_to do |format|
      if @cargo.update_attributes(params[:cargo])
        format.html { redirect_to admin_cargo_outs_path, notice: 'current_scope was successfully updated.' }
        format.json { head :no_content }
      else
        @shippings = @cargo.shippings.includes(:to_huozhan) + current_user.huozhan.ship_outs.with_status("received").with_to_huozhan(params[:to]).includes(:to_huozhan)
        format.html { render action: "edit" }
        format.json { render json: @cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cargos/1
  # DELETE /cargos/1.json
  def destroy
    @cargo = current_scope.find(params[:id])
    @cargo.destroy

    respond_to do |format|
      format.html { redirect_to cargos_url }
      format.json { head :no_content }
    end
  end

  def current_scope
    if current_user.boss?
      current_scope
    else 
      current_user.huozhan.out_cargos
    end 
  end
end
