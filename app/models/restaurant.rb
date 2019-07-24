class Restaurant
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
      reviews.map{|review| review.author}.uniq
  end

  def ratings
    reviews.map{|review| review.rating}
  end
  
  def average_star_rating
    sum =reviews.map{|review| review.rating}.reduce{|a,b| a + b}
    sum / ratings.count
  end

  def self.find_by_name(name)
      Restaurant.all.find{|restaurant| restaurant.name == name}
  end



end
