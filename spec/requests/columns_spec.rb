require 'rails_helper'

describe 'GET /columns', :type => :request do
  let!(:columns) { create_list(:column, 5) }

  before { get '/columns' }

  it 'returns HTTP status 200' do
    expect(response).to have_http_status 200
  end

  it 'returns all columns' do
    body = JSON.parse(response.body)
    expect(body.length).to eq(5)
  end
end
