class Review
    attr_reader :restaurant, :customer, :rating, :content

    @@all = []

    def initialize(restaurant, customer, rating, content)
        @restaurant = restaurant 
        @customer = customer
        @rating = rating
        @content = content
        @@all << self
    end

    def self.all 
        @@all
    end

    def one_restaurants_reviews(rest_id)
        self.all.select do |review|
            review.restaurant == rest_id
        end
    end

    def this_reviews_customer
        self.customer
    end

    def this_reviews_restaurant
        self.restaurant
    end

    def this_reviews_content
        self.content
    end
      



    # def customer
    #     self.all.select do |review|
    #         review.customer ==



end

