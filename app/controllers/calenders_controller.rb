class CalendersController < ApplicationController
  def index
    @calender = Calender.new
    @record = Record.find(record_params[:record_id])
  end
end