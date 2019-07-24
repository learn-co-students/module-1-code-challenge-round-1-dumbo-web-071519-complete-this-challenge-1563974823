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

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  def num_reviews
    Review.all.select{|review| review.customer == self}.count
  end

  def restaurants
    Review.all.select{|rev| rev.customer == self}.map{|x| x.restaurant}.uniq
  end



  def self.find_by_name(name)
   Customer.all.find{|customer| customer.full_name == name}
  end
  
  def self.find_by_first_name(name)
    split_name = name.split(" ")
    name_arr = @@all.map{|customer| customer.first_name}
    final_arr = name_arr.find{|name| name == split_name[0]}
    final_arr
  end

  def self.all_names
    Customer.all.map{|customer| customer.full_name}
  end

  def self.all
    @@all
  end

end
