require 'rails_helper'

describe 'get place route', :type => :request do
  let!(:places) { FactoryGirl.create_list(:place, 20)}

  before { get '/places'}

  it "returns all places" do
    expect(JSON.parse(response.body).size).to eq(20)
  end
end
