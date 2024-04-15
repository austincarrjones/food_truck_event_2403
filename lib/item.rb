class Item

  attr_reader :name,
              :price

  def initialize(info_hash)
    @info_hash = info_hash
    @name = info_hash[:name]
    @price = info_hash[:price].gsub('$', '').to_f
  end

  
end