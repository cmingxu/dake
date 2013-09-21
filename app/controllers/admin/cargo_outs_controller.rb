class Admin::CargoOutsController < Admin::BaseController
  # GET /cargos
  # GET /cargos.json
  def index
    @cargos = current_scope.page params[:id]

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
    @cargo = current_scope.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cargo }
    end
  end

  # GET /cargos/1/edit
  def edit
    @cargo = current_scope.find(params[:id])
  end

  # POST /cargos
  # POST /cargos.json
  def create
    @cargo = current_scope.new(params[:cargo])

    respond_to do |format|
      if @cargo.save
        format.html { redirect_to @cargo, notice: 'current_scope was successfully created.' }
        format.json { render json: @cargo, status: :created, location: @cargo }
      else
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
        format.html { redirect_to @cargo, notice: 'current_scope was successfully updated.' }
        format.json { head :no_content }
      else
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
      current_user.cargos
    end 
  end
end
