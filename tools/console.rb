require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Karl", "Marx")
cust2 = Customer.new("Josef", "Stalin")
cust3 = Customer.new("Chairman", "Mao")

rest1 = Restaurant.new("McD's")
rest2 = Restaurant.new("BK")
rest3 = Restaurant.new("KFC")

rev1 = Review.new(rest1, cust1, "Seize the means of burger production.", 5)
rev2 = Review.new(rest3, cust2, "No one should eat this.", 1)
rev3 = Review.new(rest2, cust3, "This was dank.", 50)
rev4 = Review.new(rest1, cust3, "This was super dank.", 50)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line