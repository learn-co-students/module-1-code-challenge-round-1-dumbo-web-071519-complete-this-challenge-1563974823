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


  def self.find_by_name(name)
   Restaurant.all.find{|restaurant| restaurant.name == self}
  end


  def customers
    Review.all.select{|review| review.restaurant == self}.map{|x| x.customer}
  end

  def reviews
    Review.all.select{|x| x.restaurant == self}
  end

  




end
