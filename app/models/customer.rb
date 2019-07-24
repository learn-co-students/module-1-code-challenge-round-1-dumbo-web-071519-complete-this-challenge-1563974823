class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def get_all_review
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    Review.all.count do |review|
      review.customer == self
    end
  end

  def restaurants
    self.get_all_review.map do |review|
      review.restaurant
    end.uniq
  end

end
