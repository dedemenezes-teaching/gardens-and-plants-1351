class GardensController < ApplicationController
  # GET /gardens/13
  def show
    @garden = Garden.find(params[:id])
  end
end
