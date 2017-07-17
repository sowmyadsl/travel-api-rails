class PlacesController < ApplicationController
  def index
    @places = Place.all
    json_response(@places)
  end

  def show
    @place = Place.find(params[:id])
    json_response(@place)
  end

  def create
    @place = Place.create(place_params)
    json_response(@place)
  end

  def update
    @place = Place.find(params[:id])
    @place.update(place_params)
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
  end

  private
  
  def place_params
    params.permit(:city, :country, :image)
  end

end
