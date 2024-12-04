require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# ---------  CUSTOMERS ---------- #
jason = Customer.new("jason", "lewis")
todd = Customer.new("Todd", "Smith")

# ---------  RESTAURANTS ---------- #
city_limits = Restaurant.new("City Limits")
lazy_bear = Restaurant.new("Lazy Bear")
burger_king = Restaurant.new("Burger King")

# ---------  REVIEWS ---------- #
r1 = Review.new(lazy_bear,jason,"great food!!", 5)
jason.add_review(city_limits,"The best pasta on earth!", 5)
todd.add_review(city_limits,"Service was poor, food ok", 3)
jason.add_review(burger_king, "No fries", 2)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line