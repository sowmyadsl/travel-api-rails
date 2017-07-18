class V1::PlacesController < ApplicationController
  before_action :authenticate_request!

  def index
    @places = Place.all
    city = params[:city]
    @places = Place.search_by_city(city)
    json_response( @places.page(params[:page]))
  end

  def show
    @place = Place.find(params[:id])
    json_response(@place)
  end

  def create
    @place = Place.create!(place_params)
    json_response(@place, :created)
  end

  def update
    @place = Place.find(params[:id])
    @place.update!(place_params)
    render status: 200, json: {
     message: "Your Place has successfully been updated."
     }
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
