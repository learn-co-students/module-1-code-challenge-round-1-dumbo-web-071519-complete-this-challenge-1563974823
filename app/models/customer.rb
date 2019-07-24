class Customer
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review| review.author == self}
  end

  def num_reviews
    reviews.count
  end

  def restaurants
    reviews.map{|review| review.restaurant}.uniq
  end

  def add_review(restaurant,content, rating)
    new_rewiew = Review.new(restaurant, self,content,rating)
    new_rewiew
  end

  def self.find_by_first_name(name)
    Customer.all.find{|customer| customer.first_name== name}
end

end
