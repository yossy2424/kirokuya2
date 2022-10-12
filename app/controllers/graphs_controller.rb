class GraphsController < ApplicationController
  before_action :authenticate_user!
  def index
    @record = Record.where(user_id: current_user.id)
  end
end
