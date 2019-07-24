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

def add_review(restaurant, content, rating)
  Review.new(restaurant, self, content, rating)
end 


def num_reviews
counter = Review.all.select {|rev| rev.customer == self}.count
counter
  end


def reviews
 Review.all.select {|rev| rev.customer == self} 
  end



def self.find_by_name(name)
  # given a string of a **full name**, returns the **first customer** whose full name matches
end

def Customer.find_all_by_first_name(name)
  # given a string of a first name, returns an **array** containing all customers with that first name
end


def self.all_names
self.all
  end





  def self.all 
    @@all 
  end 

end
