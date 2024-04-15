class Event

  attr_reader :name,
              :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    names_array = []
    @food_trucks.each do |truck|
      names_array << truck.name
    end
    names_array
  end

  def food_trucks_that_sell(item)
    trucks_array = []
    @food_trucks.each do |truck|
      if truck.inventory.include?(item)
        trucks_array << truck
        #binding.pry
      end
    end
    trucks_array
  end

  def potential_revenue
    #truck each item price * stock
    
  end

end