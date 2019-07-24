class Review
  @@all = []
   attr_reader :author, :restaurant
   attr_accessor :rating, :content

  def initialize(restaurant, author, content, rating)
    @restaurant = restaurant
    @author = author
    @rating = rating
    @content = content
    @@all << self

  end

  def self.all
    @@all
  end

end

