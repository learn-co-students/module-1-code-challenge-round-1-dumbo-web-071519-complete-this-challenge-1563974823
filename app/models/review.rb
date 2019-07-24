class Review
    attr_reader :content, :rating, :customer, :restaurant
    @@all = []

    def initialize(customer, restaurant, content, rating)
        @star_rating = rating
        @content = content
        @restaurant = restaurant
        @customer = customer

        @@all << self
    end

    def self.all
        @@all
    end

    











  
end

