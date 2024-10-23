require 'rails_helper'

describe 'Basic CRUD functionality' do
  before :all do
    DatabaseCleaner.clean_with(:truncation)
    @foods = create_list(:food, 20)
    @food_delete = @foods[10]
    @food_update = @foods[12]
  end

  it 'can retrive all food' do
    get api_v1_foods_path
    expect(response).to have_http_status :ok
    expect(JSON.parse(response.body).size).to eq @foods.size
  end

  it 'cat retrieve single food data' do
    food = @foods.sample
    get api_v1_food_path(food)
    expect(response).to have_http_status :ok
    expect(JSON.parse(response.body)['name']).to eq food[:name]
  end
end
