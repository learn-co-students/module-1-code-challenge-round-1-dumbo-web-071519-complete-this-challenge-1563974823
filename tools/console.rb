require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Customer.new("Carl", "Malloy")
c2 = Customer.new("Margarita", "Looney")
c3 = Customer.new("Joe", "Lee")
c4 = Customer.new("Alex", "Ford")

rest1 = Restaurant.new("Donde Musi")
rest2 = Restaurant.new("Wendy's")
rest3 = Restaurant.new("Martinello's")

c1.add_review(rest1, "Amazing!", 5)
c2.add_review(rest1, "Great stuff...", 4)
c1.add_review(rest2, "Got good chilli today, upvote!", 4)
c3.add_review(rest1, "It was good, but ok.... but good... you know what I mean...", 4)
c4.add_review(rest1, "4 starz", 4)
c1.add_review(rest2, "mediocre", 3)
c3.add_review(rest3, "AWSUMM", 5)
c4.add_review(rest3, "Nasty, oh God...", 1)
c1.add_review(rest3, "Good food", 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line