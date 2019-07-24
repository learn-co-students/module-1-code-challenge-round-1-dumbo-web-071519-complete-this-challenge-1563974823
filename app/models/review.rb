class Review

    attr_reader :review, :author, :restaurant
    @@all = []
  
    def initialize(review, author, restaurant, rating)
        @review = review
        @author =author
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end   

    def self.all
        @@all
    end   


    def customer(customer)
        @@all.select do |review|
            review.author == customer
        end    
    end    



end



# - `Review#customer`
#   - returns the customer object for that given review
#   - Once a review is created, I should not be able to change the author
# - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, I should not be able to change the restaurant
# - `Review#rating`
#   - returns the star rating for a restaurant. This should be an integer from 1-5
# - `Review#content`
#   - returns the review content, as a string, for a particular review
