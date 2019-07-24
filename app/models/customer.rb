class Customer
  attr_reader :first_name, :last_name, :full_name
  
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

# - `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, content, rating)
    #Review.new(restaurant, customer, content, rating)
    Review.new(restaurant, self, content, rating)
  end

# - `Customer#reviews`
#   - Returns an 'array' of reviews that a customer has authored
  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
  def num_reviews
    self.reviews.count
  end

# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
  def restaurants 
    self.reviews.map do |review|
      review.restaurant
    end.uniq
  end

  # - `Customer.all`
  #   - should return **all** of the customer instances
  def self.all
    @@all
  end

#   - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  # - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
  def self.find_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

# - `Customer.all_names`
#   - should return an **array** of all of the customer full names
  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end
end
