# -*- encoding : utf-8 -*-
class Admin::ShipOutsController < Admin::BaseController
  def index
    params[:search] ||= {}
    ship_scope = scope
    ship_scope = shiship_scope.with_from_huozhan(params[:search][:from]) if params[:search][:from].present?

    ship_scope = ship_scope.with_to_huozhan(params[:search][:to]) if params[:search][:to].present?
    ship_scope = ship_scope.with_receiver_tel(params[:search][:receiver_tel]) if params[:search][:receiver_tel].present?
    ship_scope = ship_scope.with_receiver_name(params[:search][:receiver_name]) if params[:search][:receiver_name].present?
    ship_scope = ship_scope.with_receiver_tel(params[:search][:receiver_tel]) if params[:search][:receiver_tel].present?
    ship_scope = ship_scope.with_sender_tel(params[:search][:sender_tel]) if params[:search][:sender_tel].present?
    ship_scope = ship_scope.with_sender_name(params[:search][:sender_name]) if params[:search][:sender_name].present?
    start_at = Date.strptime(params[:search][:start_at]) if params[:search][:start_at].present?
    end_at   = Date.strptime(params[:search][:end_at]) if params[:search][:end_at].present?
    ship_scope = ship_scope.with_created_at_between(start_at || 3.years.ago, end_at || Time.now + 1.year)
    @shippings = ship_scope.page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shippings }
    end
  end

  # GET /shippings/1
  # GET /shippings/1.json
  def show
    @shipping = scope.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shipping }
    end
  end

  # GET /shippings/new
  # GET /shippings/new.json
  def new
    @shipping = scope.new
    @shipping.huowu_baozhi = 0
    @shipping.baozhi_fee   = 0
    @shipping.daishouhuokuan_fee = 0
    @shipping.daishouhuokuan_amount = 0
    @shipping.is_daishouhuokuan_fee_paid = false
    @shipping.is_paid = true

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shipping }
    end
  end

  # GET /shippings/1/edit
  def edit
    @shipping = scope.find(params[:id])
  end

  # POST /shippings
  # POST /shippings.json
  def create
    @shipping = scope.new(params[:shipping])
    @shipping.is_daishouhuokuan_shouqu = false

    respond_to do |format|
      if @shipping.save
        format.html { redirect_to admin_ship_outs_path, notice: '收件完成' }
        format.json { render json: @shipping, status: :created, location: @shipping }
      else
        format.html { render action: "new" }
        format.json { render json: @shipping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shippings/1
  # PUT /shippings/1.json
  def update
    @shipping = scope.find(params[:id])

    respond_to do |format|
      if @shipping.update_attributes(params[:shipping])
        format.html { redirect_to admin_ship_outs_path, notice: 'scope was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shipping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shippings/1
  # DELETE /shippings/1.json
  def destroy
    @shipping = scope.find(params[:id])
    @shipping.destroy

    respond_to do |format|
      format.html { redirect_to shippings_url }
      format.json { head :no_content }
    end
  end

  def scope
    current_user.huozhan.ship_outs.order("created_at DESC")
  end

  def print
    @shipping = current_user.huozhan.ship_outs.find(params[:id])
  
    respond_to do |format|
      format.html { render :layout => "print" }
      format.xml  { render :xml => @shipping }
    end
  end

  def fangkuan
    @shipping = scope.find(params[:id])
    @shipping.quhuokuan
    @shipping.is_daishouhuokuan_fee_paid = true
    @shipping.save
  
    respond_to do |format|
      format.html { redirect_to :back }
      format.xml  { render :xml => @ship_in }
    end
  end
end
