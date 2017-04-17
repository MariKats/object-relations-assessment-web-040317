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



# customer = Customer.new("first", "last")
