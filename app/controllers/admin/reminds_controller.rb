# -*- encoding : utf-8 -*-
class Admin::RemindsController < Admin::BaseController
  # GET /reminds
  # GET /reminds.json
  def index
    @reminds = Remind.page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reminds }
    end
  end

  # GET /reminds/1
  # GET /reminds/1.json
  def show
    @remind = Remind.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @remind }
    end
  end

  # GET /reminds/new
  # GET /reminds/new.json
  def new
    @remind = Remind.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @remind }
    end
  end

  # GET /reminds/1/edit
  def edit
    @remind = Remind.find(params[:id])
  end

  # POST /reminds
  # POST /reminds.json
  def create
    @remind = Remind.new(params[:remind])

    respond_to do |format|
      if @remind.save
        format.html { redirect_to admin_reminds_path, notice: 'Remind was successfully created.' }
        format.json { render json: @remind, status: :created, location: @remind }
      else
        format.html { render action: "new" }
        format.json { render json: @remind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reminds/1
  # PUT /reminds/1.json
  def update
    @remind = Remind.find(params[:id])

    respond_to do |format|
      if @remind.update_attributes(params[:remind])
        format.html { redirect_to admin_reminds_path, notice: 'Remind was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @remind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reminds/1
  # DELETE /reminds/1.json
  def destroy
    @remind = Remind.find(params[:id])
    @remind.destroy

    respond_to do |format|
      format.html { redirect_to reminds_url }
      format.json { head :no_content }
    end
  end
end
