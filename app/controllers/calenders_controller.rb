class CalendersController < ApplicationController
  def index
    @calender = Calender.new
    @record = Record.where(user_id: current_user.id)
  end
end