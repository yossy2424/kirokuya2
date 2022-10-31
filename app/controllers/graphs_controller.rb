class GraphsController < ApplicationController
  before_action :authenticate_user!

  def index
    @record_list = Record.where(user_id: current_user.id)
    @record = @record_list.group(:name).group_by_day(:record_date).sum(:value)
  end
end
