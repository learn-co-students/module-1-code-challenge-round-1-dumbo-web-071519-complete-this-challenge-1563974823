class Customer
  attr_reader :first_name, :last_name

  @@customers = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@customers << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@customers
  end

  def reviews
    #returns all the review instances the customer has left
    Review.all.select{|review| review.customer == self}
  end

  def num_reviews
    self.reviews.count
  end

  def restaurants 
    self.reviews.map{|review| review.restaurant}.uniq
  end

  def add_review(restaurant, content, raiting)
    Review.new(self, raiting, content, restaurant)
  end

  def self.find_by_name(full_name)
    name_array = full_name.split(" ")
    first = name_array[0]
    last = name_array[1]
    
    self.all.find{|customer| customer.first_name == first}
  end

  def self.find_all_by_first_name(first_name)
    self.all.select{|customer| customer.first_name == first_name}
  end

  def self.all_names
    self.all.map{ |customer|
      "#{customer.first_name} #{customer.last_name}"
    }
  end
end
