class Restaurant
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    #returns a list of reviews for this restaurant
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
   customer_list =  self.reviews.map{|review| review.customer}
   customer_list.uniq
  end

  def average_star_rating
    rating_list = self.reviews.map{|review| review.rating}
    avg = (rating_list.inject(0){|sum, i| sum+i}).to_f/(rating_list.size).to_f
    avg
  end

  def longest_review
    content_list = self.reviews.map {|review| review.content}
    sorted = content_list.sort_by{|content| content.size}
    sorted.last
  end

  def self.find_by_name(name)
    self.all.find{|restaurant| restaurant.name == name}
  end


end
