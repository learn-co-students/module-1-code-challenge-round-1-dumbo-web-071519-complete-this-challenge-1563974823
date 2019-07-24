class Restaurant
  attr_reader :name

  @@all =[]
  @@allreviews = []

  def initialize(name)
    @name = name
    @@all << self
  end

def customers
  uniqlist = Customer.all.select {|rev| rev.customer == self}
  end

def reviews
  # returns an array of all reviews for that restaurant
 Review.all.select {|rev| rev.restaurant == self}
end

def average_star_rating
average = Review.all.map {|rev| rev.rating}.sum 
(average * 100) / 5.to_f 
  end

def longest_review
  # returns the longest review content for a given restaurant
  end



  def self.all 
    @@all 
  end 

end
