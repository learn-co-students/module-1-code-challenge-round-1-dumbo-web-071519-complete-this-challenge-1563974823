class Review
    @@reviews = []

    attr_reader :customer, :rating, :content, :restaurant

    ##Review raiting are from 1 - 5 integers
    ##Review content are a String

    def initialize(customer, rating, content, restaurant)
        @customer = customer
        @rating = rating
        @content = content
        @restaurant = restaurant

        @@reviews << self
    end

    def self.all
        @@reviews
    end
end

