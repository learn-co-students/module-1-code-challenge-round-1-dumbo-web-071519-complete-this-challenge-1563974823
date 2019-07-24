class Customer

  @@all = []

  attr_reader :first_name, :last_name

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
    Review.new(self, restaurant, rating, content)
  end

  def get_reviews
    #returns an array of reviews for this customer
    Review.all.select{|review| review.customer == self}
  end

  def num_reviews
    self.get_reviews.size
  end

  def restaurants
  restaurant_list = self.get_reviews.map{|review| review.restaurant}
   restaurant_list.uniq
  end

  def self.find_by_name(fullname)
    name_arr = fullname.split(' ')
    self.all.find{|customer| customer.first_name == name_arr[0] && customer.last_name == name_arr[1]}
  end

  def self.find_by_first_name(firstname)
    self.all.select{|customer| customer.first_name == firstname}
  end

  def self.all_names
     self.all.map{|customer| customer.full_name}
  end

end
