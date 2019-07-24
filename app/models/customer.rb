class Customer
  attr_reader :first_name, :last_name

  #should return **all** of the customer instances
  @@all = []


  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  #should return **all** of the customer instances
  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  #`Customer#add_review(restaurant, content, rating)`
  #- given a **restaurant object**, some review content (as a string),
  # and a star rating (as an integer), creates a new review and 
  #associates it with that customer and restaurant.
  def add_review(restaurant, review, rating )
    Restaurant.all

  end

  # `Customer#num_reviews`
  #- Returns the total number of reviews that a customer has authored
  def num_reviews

  end

  #`Customer#restaurants`
  #- Returns a **unique** array of all restaurants a customer has reviewed
  def restaurants
    
  end

  #`Customer.find_by_name(name)`
  #given a string of a **full name**, returns the **first customer** whose full name matches

  #`Customer.find_all_by_first_name(name)`
  #given a string of a first name, returns an **array** containing all customers with that first name

  #`Customer.all_names`
  #should return an **array** of all of the customer full names

end

