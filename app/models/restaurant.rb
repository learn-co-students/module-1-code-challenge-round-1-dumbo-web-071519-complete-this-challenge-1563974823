class Restaurant
  @@restaurants = []

  attr_reader :name

  def initialize(name)
    @name = name

    @@restaurants << self
  end

  def self.all
    @@restaurants
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.reviews.map{|review| review.customer}.uniq
  end

  def average_star_raiting
    #This is an instance method
    self.reviews.reduce(0) { |sum, review| 
      sum += review.rating
    } / self.reviews.count
  end

  def longest_review
    #This is an instance method
    #Return the content, NOT the instance
    self.reviews.inject{ |longest, review|
      if longest.content.length < review.content.length
        review
      else
        longest
      end
    }.content
  end

  def self.find_by_name(name)
    self.all.find{ |resturant| resturant.name == name}
  end

end
