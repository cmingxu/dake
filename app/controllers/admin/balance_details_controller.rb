# -*- encoding : utf-8 -*-
class Admin::BalanceDetailsController < Admin::BaseController
  # GET /balance_details
  # GET /balance_details.json
  def index
    @balance_details = balance_detail_scope.out.page(params[:page]).order("created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @balance_details }
    end
  end

  def vehicle_balance_details
    @current_tab = "balance_details"
    @vehicle = Vehicle.find_by_paizhao params[:paizhao]
    balance_detail_scope = scope.with_paizhao params[:paizhao]
    @balance_details = balance_detail_scope.out.page(params[:page]).order("created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @balance_details }
    end
  end

  # GET /balance_details/1
  # GET /balance_details/1.json
  def show
    @balance_detail = scope.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @balance_detail }
    end
  end

  # GET /balance_details/new
  # GET /balance_details/new.json
  def new
    @balance_detail = scope.new
    @balance_detail.balance_detail_date = Time.now.to_s(:js_date_default)
    @routes = current_user.locations.collect(&:routes).flatten

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @balance_detail }
    end
  end

  # GET /balance_details/1/edit
  def edit
    @routes = current_user.locations.collect(&:routes).flatten
    @balance_detail = scope.find(params[:id])
  end

  # POST /balance_details
  # POST /balance_details.json
  def create
    @balance_detail = scope.new(params[:balance_detail])
    @routes = current_user.locations.collect(&:routes).flatten

    respond_to do |format|
      if @balance_detail.save
        format.html { redirect_to admin_balance_details_path, notice: 'scope was successfully created.' }
        format.json { render json: @balance_detail, status: :created, location: @balance_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @balance_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /balance_details/1
  # PUT /balance_details/1.json
  def update
    @balance_detail = scope.find(params[:id])
    @routes = current_user.locations.collect(&:routes).flatten

    respond_to do |format|
      if @balance_detail.update_attributes(params[:balance_detail])
        format.html { redirect_to admin_balance_details_path, notice: 'scope was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @balance_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /balance_details/1
  # DELETE /balance_details/1.json
  def destroy
    @balance_detail = scope.find(params[:id])
    if @balance.balance_details.count == 1
      notice = "只有一个明细， 不能删除"
    else
      @balance_detail.destroy
      notice = "删除成功"
    end

    respond_to do |format|
      format.html { redirect_to edit_admin_balance_path(@balance), :notice => notice }
      format.json { head :no_content }
    end
  end

  def scope
    @balance = Balance.find params[:balance_id]
    @balance.balance_details
  end
end
