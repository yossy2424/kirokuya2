class RecordsController < ApplicationController
  before_action :authenticate_user!
  def index
    @record = Record.find_by(user_id: current_user.id)
  end

  def new
    @record = Record.new
  end

  def create
    # レコードデート
    record_date = "#{record_params["record_date(1i)"]}-#{record_params["record_date(2i)"]}-#{record_params["record_date(3i)"]}"

    # 体重
    @waight = Record.new(name: "weight", value: record_params[:weight], record_date: record_date, user_id: current_user.id)

    # 体脂肪
    @body_fat_percentage = Record.new(name: "body_fat_percentage", value: record_params[:body_fat_percentage], record_date: record_date, user_id: current_user.id)

    ActiveRecord::Base.transaction do
      @waight.save!
      @body_fat_percentage.save!
    end
    redirect_to records_path

    rescue ActiveRecord::RecordInvalid
      render :new
  end

  private
  def record_params
    params.require(:record).permit(:weight, :body_fat_percentage, :record_date).merge(user_id: current_user.id)
  end
end
