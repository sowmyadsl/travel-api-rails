require 'rails_helper'

describe 'get place route', :type => :request do
  let!(:places) { FactoryGirl.create_list(:place, 20)}

  before { get '/v1/places'}

  it "returns all places" do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end


end
