require 'rails_helper'

describe 'GET /rows', :type => :request do
  let!(:rows) { create(:row) }

  before { get '/rows' }

  it 'returns HTTP status 200' do
    expect(response).to have_http_status 200
  end

  it 'returns all rows' do
    body = JSON.parse(response.body)

    expect(body.count).to eq(1)
    expect(body[0]['correspondences']).to eq([])
  end
end

describe 'GET /rows/:id', :type => :request do
  let!(:row) { create(:row) }

  before { get "/rows/#{row.query_param}" }

  it 'returns HTTP status 200' do
    expect(response).to have_http_status 200
  end

  it 'returns one row' do
    body = JSON.parse(response.body)
    expect(body.count).to eq(2)
    expect(body['correspondences']).to eq([])
  end
end
