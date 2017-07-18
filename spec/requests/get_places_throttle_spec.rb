describe 'get place route', :type => :request do
  let!(:places) { FactoryGirl.create_list(:place, 50)}

  before do
    101.times do
      get '/v1/places/page/1'
    end
  end




  it 'test successfull throttle' do
      expect(response.status).to eq 403
  end
end
