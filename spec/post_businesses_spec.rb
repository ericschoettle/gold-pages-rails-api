require 'rails_helper'

describe "post to Businesses", :type => :request do

  before do
    post '/businesses', params: { :company => 'test_company', :product => "test_product", :slogan => 'test_slogan', :state => "test_state", :city => "test_city", :street_address => "test_street_address", :zip => "test_zip" }
  end

  it 'returns the company' do
    expect(JSON.parse(response.body)['company']).to eq('test_company')
  end

  it 'returns the product' do
    expect(JSON.parse(response.body)['product']).to eq('test_product')
  end

  it 'returns the slogan' do
    expect(JSON.parse(response.body)['slogan']).to eq('test_slogan')
  end

    it 'returns the state' do
    expect(JSON.parse(response.body)['state']).to eq('test_state')
  end

    it 'returns the city' do
    expect(JSON.parse(response.body)['city']).to eq('test_city')
  end

    it 'returns the street_address' do
    expect(JSON.parse(response.body)['street_address']).to eq('test_street_address')
  end

    it 'returns the zip' do
    expect(JSON.parse(response.body)['zip']).to eq('test_zip')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

describe "post bad information to Businesses", :type => :request do

  before do
    post '/businesses', params: { :delisious => 'test_company', :word => "test_product", :slogan => 'test_slogan', :state => "test_state" }
  end

  it 'returns the company' do
    expect(JSON.parse(response.body)).to eq('test_company')
  end
end