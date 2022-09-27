class RecordsController < ApplicationController
  def index
    @record = Record.find(current_user.id)
  end

  def new
    @record = Record.new
  end

  # 詳細画面 /:id
  # def show
  # end

  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def record_params
    params.require(:record).permit(:weight, :body_fat_percentage, :record_date).merge(user_id: current_user.id)
  end
end
