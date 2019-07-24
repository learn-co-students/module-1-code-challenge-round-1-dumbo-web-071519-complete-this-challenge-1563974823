class Review
  attr_reader :author, :restaurant, :content, :rating
    @@all = []

    def initialize(restaurant,author, content, rating)
        @restaurant = restaurant
        @author = author
        @content = content
        @rating = rating
        @@all << self

    end

    def self.all
        @@all
    end

end

