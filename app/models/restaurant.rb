class Restaurant
  @@all =[]
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.author
    end.uniq
  end

  def average_star_rating
    total=0
    size=reviews.map do |review|
      total+=review.rating
    end.size
    total/size
  end

  def longest_review
    longest=reviews.first
    reviews.map do |review|
     if review.content.length>longest.content.length
       longest = review
     end
    end
    longest
  end

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

end
