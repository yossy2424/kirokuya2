class GraphsController < ApplicationController
  def index
    @graph = Graph.new
    @record = Record.where(user_id: current_user.id)
  end
end
