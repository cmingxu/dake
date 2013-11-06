# -*- encoding : utf-8 -*-
class Admin::CargoInsController < Admin::BaseController
  # GET /cargos
  # GET /cargos.json
  def index
    params[:search] ||= {}
    cargo_scope = current_scope
    cargo_scope = cargo_scope.with_created_at_between(Date.strptime(params[:search].fetch('start_at'), "%Y-%m-%d"), Date.strptime(params[:search].fetch('end_at'), "%Y-%m-%d") )  if params[:search].fetch("start_at", "").present? and params[:search].fetch('end_at',"").present?
    cargo_scope = cargo_scope.with_serial_num(params[:search]['serial_num']) if params[:search]['serial_num'].present?
    cargo_scope = cargo_scope.with_from_huozhan(params[:search]['from']) if params[:search]['from'].present?
    cargo_scope = cargo_scope.with_to_huozhan(params[:search]['to']) if params[:search]['to'].present?
    cargo_scope = cargo_scope.order("created_at DESC")

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

  def print
    @cargo_in = current_scope.find params[:id]
    @shippings = @cargo_in.shippings
  
    respond_to do |format|
      format.html { render :layout => "print" }
      format.xml  { render :xml => @shippings }
    end
  end

  def reach
    @cargo_in = current_scope.find params[:id]
    @cargo_in.update_attribute(:cargo_status, "received")
    @shippings = @cargo_in.shippings
    @shippings.each do |ship|
      ship.reach
    end
  
    respond_to do |format|
      format.html { redirect_to :back }
      format.xml  { render :xml => @cargo_in }
    end
  end

  def current_scope
    if current_user.boss?
      current_scope
    else 
      Cargo
    end 
  end
end
