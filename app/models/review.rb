class Review
  
    @@all = []

    attr_reader :customer, :restaurant, :rating, :content

    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = self.check_rating(rating)
        @content = content
        @@all << self
    end

    # Makes sure rating is a number from 1 to 5  
    def check_rating(rating)
        proper_rating = rating
        if rating < 1
            proper_rating = 1
        elsif rating > 5
            proper_rating = 5
        end
        proper_rating
    end

    def self.all
        @@all
    end


end

