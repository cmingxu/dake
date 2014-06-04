# -*- encoding : utf-8 -*-
class Admin::ReportsController < Admin::BaseController
  def index
    params[:search] ||= { :start_at => Time.now.beginning_of_month.strftime("%Y-%m-%d"),
                          :end_at   => Time.now.end_of_month.strftime("%Y-%m-%d") }
    @balance_details = BalanceDetail.out.with_issued_between(Date.parse(params[:search][:start_at]), Date.parse(params[:search][:end_at])).all || []
    @grouped_balance_details = @balance_details.group_by {|b| b.paizhao }
    @series = []
    Reason.out.all.each do |r|
      data = []
      @grouped_balance_details.each_pair do |paizhao, balance_details|
        data << balance_details.select{|b| b.reason == r.reason}.sum(&:amount)
      end
      @series << {:name => r.reason, :data  => data.dup}
    end
    @in_balance_details = BalanceDetail.in.all || []
  end
end
