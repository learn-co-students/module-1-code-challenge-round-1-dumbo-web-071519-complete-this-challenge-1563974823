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

  def my_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    my_reviews.count
  end

  def restaurants
    my_reviews.map do |review|
      review.restaurant
    end.uniq
  end

  def self.find_by_name(f_name)
    self.all.find do |customer|
      customer.full_name == f_name
    end
  end

  def add_review(restaurant, rating, content)
    Review.new(restaurant, self, rating, content)
  end

  


end
