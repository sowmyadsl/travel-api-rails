require 'rails_helper'

describe "delete a place route", :type => :request do

  before do
    @place1 = FactoryGirl.create(:place)
    @place2 = FactoryGirl.create(:place)

    delete "/v1/places/#{@place1.id}"

  end

  it 'should return status 204' do
      expect(response.status).to eq 204
  end

  it 'returns a created status' do
    expect(Place.all[0]).to eq(@place2)
  end
end
