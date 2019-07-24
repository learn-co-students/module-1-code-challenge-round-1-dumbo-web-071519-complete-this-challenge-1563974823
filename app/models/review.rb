class Review
    attr_accessor :restaurant, :customer, :content, :rating
    @@all = []

    def initialize(restaurant, customer, content, rating)
        @restaurant = restaurant
        @customer = customer
        @content = content
        @rating = rating.to_f
        @@all << self
    end
    
    # - `Review.all`
    #   - returns all of the reviews
    def self.all 
        @@all
    end

end

