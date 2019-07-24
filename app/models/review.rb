require 'pry'

class Review
    attr_reader :customer, :restaurant, :rating, :content
    @@all = []

    def initialize (customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@all << self
    end

    def customer 
    #returns customer object for that
    #given rating.
    end

    def restaurant
        #returns a UNIQUE list of all restaurants reviewed
        reviews = Review.all.select {|restaurant| restaurant.customer == self}
        reviews.map {|restaurantMap| restaurantMap.restaurant}.uniq 
    binding.pry  
    end


    def rating 
        #returns star rating
        #int 1-5
        #takes in array of all customers' ratings
        # 

    end

    def content
    # review content as String
    end

    def self.all
        @@all 
    end
end
