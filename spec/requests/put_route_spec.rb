require 'rails_helper'

describe "updates a place route", :type => :request do
  place = FactoryGirl.create(:place)

  before do
    get /places/'#place.id'
  end



  it "returns all places" do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns the updated city' do
    expect(place.city).to eq("test_city")
  end
end
