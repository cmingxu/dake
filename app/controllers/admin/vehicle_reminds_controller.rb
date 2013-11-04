# -*- encoding : utf-8 -*-
class Admin::VehicleRemindsController < Admin::BaseController
  before_filter :load_vehicle

  def index
    @vr = @vehicle.vehicle_reminds.new
  end

  def create
    @vr = @vehicle.vehicle_reminds.build(params[:vehicle_remind])
  
    respond_to do |format|
      if @vr.save
        flash[:notice] = '保存成功'
        format.html { redirect_to admin_vehicle_views_path }
        format.xml  { render :xml => @vr, :status => :created, :location => @vr }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vr.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @vr =  @vehicle.vehicle_reminds.find  params[:id]
    @vr.destroy 

    redirect_to :back
  end

  def load_vehicle
    @vehicle = Vehicle.find  params[:vehicle_id]
  end
end
