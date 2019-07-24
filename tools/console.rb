require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rest1 = Restaurant.new("Chillies")
rest2 = Restaurant.new("Mexican Grill")
rest3 = Restaurant.new("Taco Bell")

cust1 = Customer.new("John", "Doe")
cust2 = Customer.new("Donald", "Trump")
cust3 = Customer.new("The", "Rock")

rev1 = cust1.add_review(rest1, "Tastes like bugs.", 1)
rev2 = cust1.add_review(rest2, "Ten out of ten, would come again!", 5)
rev3 = cust2.add_review(rest1, "Wut?", 1)
rev4 = cust3.add_review(rest3, "Best meal ever in the world.", 4)
rev1 = cust2.add_review(rest2, "Could not shoe on head.", 1)

#rev1 = Review.new(1, "Tastes like bugs.")
#rev2 = Review.new(5, "Ten out of ten, would come again!")
#rev3 = Review.new(4, "Best mean ever in the world.")
#rev4 = Review.new(1, "Could not find shoe.")
#rev5 = Review.new(3, "Wut?")








binding.pry
0 #leave this here to ensure binding.pry isn't the last line