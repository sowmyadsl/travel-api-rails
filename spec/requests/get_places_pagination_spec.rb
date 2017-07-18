describe 'get place route', :type => :request do
  let!(:places) { FactoryGirl.create_list(:place, 50)}

  before { get '/v1/places/page/1'}

  it 'test successfull pagination' do
    expect(JSON.parse(response.body).size).to eq(25)
  end
end
