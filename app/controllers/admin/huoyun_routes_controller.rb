# -*- encoding : utf-8 -*-
class Admin::HuoyunRoutesController < Admin::BaseController
  # GET /huoyun_routes
  # GET /huoyun_routes.json
  def index
    @huoyun_routes = HuoyunRoute.page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @huoyun_routes }
    end
  end

  # GET /huoyun_routes/1
  # GET /huoyun_routes/1.json
  def show
    @huoyun_route = HuoyunRoute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @huoyun_route }
    end
  end

  # GET /huoyun_routes/new
  # GET /huoyun_routes/new.json
  def new
    @huoyun_route = HuoyunRoute.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @huoyun_route }
    end
  end

  # GET /huoyun_routes/1/edit
  def edit
    @huoyun_route = HuoyunRoute.find(params[:id])
  end

  # POST /huoyun_routes
  # POST /huoyun_routes.json
  def create
    @huoyun_route = HuoyunRoute.new(params[:huoyun_route])

    respond_to do |format|
      if @huoyun_route.save
        format.html { redirect_to admin_huoyun_routes_path, notice: 'Huoyun route was successfully created.' }
        format.json { render json: @huoyun_route, status: :created, location: @huoyun_route }
      else
        format.html { render action: "new" }
        format.json { render json: @huoyun_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /huoyun_routes/1
  # PUT /huoyun_routes/1.json
  def update
    @huoyun_route = HuoyunRoute.find(params[:id])

    respond_to do |format|
      if @huoyun_route.update_attributes(params[:huoyun_route])
        format.html { redirect_to admin_huoyun_routes_path, notice: 'Huoyun route was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @huoyun_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /huoyun_routes/1
  # DELETE /huoyun_routes/1.json
  def destroy
    @huoyun_route = HuoyunRoute.find(params[:id])
    @huoyun_route.destroy

    respond_to do |format|
      format.html { redirect_to admin_huoyun_routes_url }
      format.json { head :no_content }
    end
  end
end
