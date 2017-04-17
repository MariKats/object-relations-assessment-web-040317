# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name

  ALL = []
  FULL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    ALL << self
    FULL << self.full_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    ALL
  end

  def self.all_names
    FULL
  end

  def self.find_by_name(name)
    Customer.all_names.find {|n| n == name}
  end

  def self.find_all_by_first_name(name)
    Customer.all.find_all {|n| n == name}
  end

# there is an error with the content is is an undefined local variable or method
  def add_review(restaurant, content)
     Review.new(self, restaurant, content)
  end

end

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

# no time to try this one but not feeling it..
  def customer(customer)
    rev = self.all.select {|rev| rev.customer == customer}
    rev.select {|rev| rev.customer}
  end

# this didnt work
  def restaurant
    self.restaurant
  end
end
