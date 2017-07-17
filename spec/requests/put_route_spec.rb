# require 'rails_helper'
#
# describe "post a place route", :type => :request do
#
#   before do
#     post '/places', params: { :id => '1', :city => 'test_city', :country => 'test_country' }
#   end
#
#   before do
#     delete '/places/1', params: { :city => 'test_city2', :country => 'test_country2' }
#   end
#
#   # it 'returns the city' do
#   #   expect(JSON.parse(response.body)['city']).to eq('test_city2')
#   # end
#   #
#   # it 'returns the place country' do
#   #   expect(JSON.parse(response.body)['country']).to eq('test_country2')
#   # end
#
#   it 'should return status 200' do
#       expect(response.status).to eq 200
#   end
#
#   it 'returns a created status' do
#     expect(response).to have_http_status(:created)
#   end
# end
