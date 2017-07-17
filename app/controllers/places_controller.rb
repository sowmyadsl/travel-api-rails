class PlacesController < ApplicationController
  def index
    @places = {"Pheonix": "USA"}
    json_response(@places)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end

end
