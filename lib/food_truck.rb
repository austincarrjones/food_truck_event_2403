class FoodTruck

  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end
  
  def stock(item, stock)
    if @inventory.key?(item)
      @inventory[item] += stock
    else
      @inventory[item] = stock
    end
  end
  
  def check_stock(item)
    if @inventory.include?(item)
      @inventory[item]
    else
      0
    end
  end

end