require 'rails_helper'

describe "post a place route", :type => :request do

  before do
    post '/places', params: { :city => 'test_city', :country => 'test_country' }
  end

  it 'returns the city' do
    expect(JSON.parse(response.body)['city']).to eq('test_city')
  end

  it 'returns the place country' do
    expect(JSON.parse(response.body)['country']).to eq('test_country')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
