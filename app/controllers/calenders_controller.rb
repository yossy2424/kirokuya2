class CalendersController < ApplicationController
  def index
    @calender = Calender.new
    # @record = Record.find(1) #idで検索して一件だけデータを返す
    # @record = Record.find_by(user_id: current_user.id) #引数に指定したカラム名で検索して1件だけデータを返す。
    @record = Record.where(user_id: current_user.id) #引数に指定したカラム名で検索して該当するデータを全て返す。[データ1, データ2、・・・]

    # @record = Record.find(record_params[:record_id])
  end

  # private
  # def record_params
  #   params.require(:calender).permit(:start_time).merge(user_id: current_user.id,record_id: params[:record_id])
  # end
end