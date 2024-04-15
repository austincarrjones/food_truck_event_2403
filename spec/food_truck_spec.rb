require 'spec_helper'

RSpec.describe FoodTruck do

  it 'exists' do
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    expect(food_truck).to be_a(FoodTruck)
    expect(food_truck.name).to eq("Rocky Mountain Pies")
    expect(food_truck.inventory).to eq({})
  end

  it 'can #check_stock' do
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    expect(food_truck.check_stock(item1)).to eq(0)
  end

  it 'can #stock' do
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    food_truck.stock(item1, 30)

    expect(food_truck.inventory).to eq({item1 => 30})
    expect(food_truck.check_stock(item1)).to eq(30)
    
    food_truck.stock(item1, 25)
    expect(food_truck.check_stock(item1)).to eq(55)

    food_truck.stock(item2, 12)
    expect(food_truck.inventory).to eq({item1 => 55, item2 => 12})
  end

end