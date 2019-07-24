require 'pry'

class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all 
    @@all
  end

  def customers
  #returns a UNIQUE list of all customers who 
  #reviewed the restaurant.
    reviewed = Review.all.select {|customers| customers.restaurant == self}
    reviewed.map {|customerMap| customerMap.customers}.uniq 
  end

  def reviews
    #returns array of all reviews
  end

  def avg_star_rating
    #avg star rating of all reviews
  end

  def longestReview
    #longest content for given
    #review.
  end

  def self.find_by_name
    # given string of rest name
    #returns first rest. that
    #matches.
  end

end
