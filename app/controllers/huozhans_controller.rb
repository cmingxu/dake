class HuozhansController < ApplicationController
  # GET /huozhans
  # GET /huozhans.json
  def index
    @huozhans = Huozhan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @huozhans }
    end
  end

  # GET /huozhans/1
  # GET /huozhans/1.json
  def show
    @huozhan = Huozhan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @huozhan }
    end
  end

  # GET /huozhans/new
  # GET /huozhans/new.json
  def new
    @huozhan = Huozhan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @huozhan }
    end
  end

  # GET /huozhans/1/edit
  def edit
    @huozhan = Huozhan.find(params[:id])
  end

  # POST /huozhans
  # POST /huozhans.json
  def create
    @huozhan = Huozhan.new(params[:huozhan])

    respond_to do |format|
      if @huozhan.save
        format.html { redirect_to @huozhan, notice: 'Huozhan was successfully created.' }
        format.json { render json: @huozhan, status: :created, location: @huozhan }
      else
        format.html { render action: "new" }
        format.json { render json: @huozhan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /huozhans/1
  # PUT /huozhans/1.json
  def update
    @huozhan = Huozhan.find(params[:id])

    respond_to do |format|
      if @huozhan.update_attributes(params[:huozhan])
        format.html { redirect_to @huozhan, notice: 'Huozhan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @huozhan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /huozhans/1
  # DELETE /huozhans/1.json
  def destroy
    @huozhan = Huozhan.find(params[:id])
    @huozhan.destroy

    respond_to do |format|
      format.html { redirect_to huozhans_url }
      format.json { head :no_content }
    end
  end
end
