class CalendersController < ApplicationController
  before_action :authenticate_user!
  def index
    @calender = Calender.new
    @record = Record.where(user_id: current_user.id)
  end
end