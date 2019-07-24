class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    

    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)

  end

  def select_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    select_reviews.length
  end

  def restaurants
    select_reviews.map do |review|
      review.restaurant
    end.uniq
  end








end
