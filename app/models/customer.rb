class Customer
  attr_reader :first_name, :last_name, :full_name, :restaurant, :content, :rating

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = first_name + last_name
    @@all << self
  end

  def self.all
    @@all
  end  

  def full_name
    "#{first_name} #{last_name}"
  end
end


 def add_review(restaurant, content, rating)
    review.new(restaurant, content, rating)
 end


 def reviews
    Review.all.select do |review|
      review.author == self
    end
 end

 def num_reviews
    counter = self.reviews.select do |ele|
      ele.author == self
    end  
    counter.count
 end 


 def restaurants
   self.reviews.map do |ele|
    if ele.author == self
      return ele.review
    end
   end.uniq

   def self.find_by_name(name)
        self.all.select do |customer|
           customer.name == self.full_name
        end
   end 


  def self.find_all_by_first_name(name)
      self.all.select do |customer|
        customer.name == self.first_name
      end
  end

  def self.all_names
    @@all.map do |customer|
      customer.full_name
    end
  end

  # Customer.all_names`
  # - should return an **array** of all of the customer full names

 end




