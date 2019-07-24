class Restaurant
    attr_reader :name
    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

# - `Restaurant#reviews`
#   - returns an 'array' of all reviews for that restaurant
    def reviews
      Review.all.select do |review|
        review.restaurant == self
      end
    end    

# - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
    def customers
      self.reviews.map do |review|
        review.customer
      end.uniq
    end

  # - `Restaurant#ratings`
#   - Returns a list of all ratings for a a particular restaurant.
    def ratings
      #map
      self.reviews.map do |review|
        review.rating
      end
    end

# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
    def average_star_rating
      self.ratings.sum / self.reviews.count
    end

# - `Restaurant#review_word_count_hash`
#   - returns a sorted hash with each review content as the key and their word count as the value 
    def review_word_count_hash
      word_count_hash = {}
      self.reviews.each do |review|
        word_count_hash[review.content] = review.content.split.count # Split on one or more non-word characters.
      end
      word_count_hash.sort_by{|key,value| value} #yes this actually returns an array
    end

# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant
    def longest_review
      #max_by length
      self.review_word_count_hash.last[0]
    end

  # - `Restaurant.all`
  #   - returns an array of all restaurants
    def self.all 
      @@all 
    end

  # - `Restaurant.find_by_name(name)`
  # - given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
