require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Bob", "Smith")
c2 = Customer.new("Bob", "Jones")
c3 = Customer.new("Eric", "Donnel")
c4 = Customer.new("John", "Doe")

res1 = Restaurant.new("Chili's")
res2 = Restaurant.new("Applebee's")
res3 = Restaurant.new("Outback Steakhouse")

rev1 = Review.new(c1, res1, 5, "I seriously love Chili's. Especially when they greet me. Welcome to Chili's!")
rev2 = Review.new(c2, res1, 5, "CHILI'S. I NEEEEEEEEED IT")
rev3 = Review.new(c1, res2, 2, "This place sucks. Chili's is much better")
rev4 = Review.new(c3, res3, 1, "They don't say welcome to Chili's when I walked in so I immediately left. I wish I could give this 0 stars. ")
rev5 = Review.new(c1, res1, 5, "WELCOME TO CHILI'S!!!!!!!!!!!")
rev6 = Review.new(c4, res3, 0, "Yeah it's fine.")




binding.pry
0 #leave this here to ensure binding.pry isn't the last line