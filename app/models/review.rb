class Review
  @@all = []
  attr_accessor  :content, :rating
  attr_reader :customer, :restaurant
  def initialize(restaurant, customer, content, rating)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

  def rating
    @rating  #need to implement the limiting of rating
  end

  def content
    @content.to_s
  end


end

