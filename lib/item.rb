class item

  attr_reader

  def initialize(info_hash)
    @info_hash = info_hash
    @name = info_hash[:name]
    @price = info_hash[:price]
  end

end