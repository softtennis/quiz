class ChoicesController < ApplicationController
  def index
    @choice = Choice.find(params[:normal_id])
  end
end
