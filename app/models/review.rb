class Review

  attr_accessor :customer, :restaurant, :content

  ALL = []

  def self.all
    ALL
  end

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    ALL << self
  end

# no time to try this one
  def customer(customer)
    self.all.select {|rev| rev.customer == customer}
  end

# this didnt work
  def restaurant
    self.restaurant
  end
end
