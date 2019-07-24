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

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    ratings = self.reviews.map {|review| review.rating.to_f}
    ratings.sum / ratings.count
    #wasnt sure if you wanted it as a float or integer. if this was my app, I'd want it as a float
  end

  def longest_review
    self.reviews.max_by {|review| review.content.length}.content
  end

end
