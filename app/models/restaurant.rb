class Restaurant
  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    Restaurant.all.find {|res| res.name == name}
  end

  def reviews
    Review.all.select {|rev| rev.restaurant == self}
  end

  def customer
    rev = Review.all.select {|rev| rev.restaurant == restaurant}
    rev.collect {|rev| rev.customer}
  end

end
