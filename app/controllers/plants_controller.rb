class PlantsController < ApplicationController
  def create
    # 1. initialize the new plant with the info that comes from the Form
    @plant = Plant.new(plant_params)
    # 2. assign the garden to the plant
    @garden = Garden.find(params[:garden_id])
    @plant.garden = @garden
    # 3. redirect OR render the form with errors
    if @plant.save
      redirect_to garden_path(@garden)
    else
      # render 'path/to/the/html/to/be/rendered'
      render 'gardens/show', status: :unprocessable_entity
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy

    redirect_to garden_path(@plant.garden)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
