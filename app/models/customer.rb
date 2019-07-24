require 'pry'
class Customer
  attr_reader :first_name, :last_name
  attr_accessor :content, :rating 
  
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    # restaurant = restaurant
    # content: add review as a string
    # rating is an int 1-5.
  end

  def numReviews
    #total number of reviews cutomer made
  end

  def restaurants
    #returns a UNIQUE list of all restaurants reviewed
    reviews = Review.all.select {|restaurants| restaurants.customer == self}
    reviews.map {|restaurantMap| restaurantMap.restaurant}.uniq 
  end

  def self.find_by_full_name
    #use find to return ONLY THE FIRST
    #customer whose full name matches.
    all.find {|customers| c.first_name + last_name == name}
  end

  def self.find_by_first_name
  #returns ARRAY of ALL THE CUSTOMERS
  # with the same first names
  #i.e. "Sally" => ["Sally Walker", "Sally Jones", "Sally Hayfield"]
  all.select {|customers| c.first_name == name}
  end

  def self.all_names
    # array of customers' full names
    self.first_name + last_name
  end

end