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

end


def reviews
  review.all.select do |ele|
    ele.restaurant == self
  end
  end

end
def customers
  self.reviews.map do |ele|  
  return ele.author
  end
end

def average_star_rating
  count = self.reviews.map do |ele|
    ele.rating
  end
  average = (count.sum * 100 / self.reviews.count) 
end

def longest_review
  longest = self.reviews.review
  longest.max_by(&:length)
end


def self.find_by_name(name)
    @all.find do |restaurant|
      restaurant.name == name
    end
end

# Restaurant.find_by_name(name)`
#   - given a string of restaurant name, returns the first restaurant that matches

# # ar.max_by(&:length)

# # Restaurant#average_star_rating`
# #   - returns the average star rating for a restaurant based on its reviews