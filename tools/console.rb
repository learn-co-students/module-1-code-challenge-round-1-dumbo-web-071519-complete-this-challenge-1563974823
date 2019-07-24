require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

## Customers
isabelle1 = Customer.new("Isabelle", "Santiago")
isabelle2 = Customer.new("Isabelle", "Lopez")
jessica1 = Customer.new("Jessica", "Santiago")
jessica2= Customer.new("Jessica", "Ramirez")
jessica3 = Customer.new("Jessica", "Morales")
steven = Customer.new("Steven", "Thorne")
franklin = Customer.new("Franklin", "Reed")
daniel = Customer.new("Daniel", "Stern")

##Resturnats
bad_resturant = Restaurant.new("Don't Eat Here")
okay_resturant = Restaurant.new("Sometimes it's Good")
average_resturant = Restaurant.new("We Are (Pretty) Good")
high_resturant = Restaurant.new("You Can't Afford Us")

##Reviews
review1 = Review.new(isabelle1, 1, "UGH, what is this?", bad_resturant)
review2 = Review.new(isabelle1, 3, "I came here only for the drinks", okay_resturant)
review3 = Review.new(isabelle1, 4, "I needed something for dinner so I came here. Pretty good takeout.", average_resturant)

review4 = Review.new(isabelle2, 5, "Spent my life saving to eat here. Worth it. (it wasn't worth it fiancially)", high_resturant)
review5 = Review.new(isabelle2, 2, "This is my lunch spot. I don't have good lunches", okay_resturant)

review6 = Review.new(jessica1, 1, "I heard that there is a rat living behind the walls. The Legends are true...", bad_resturant)
review7 = Review.new(jessica1, 3, "This is the baisic takeout spot for everyone, including their mother.", average_resturant)
review8 = Review.new(jessica1, 5, "I just went here for the gram. IT was good but I didn't get any new followers", high_resturant)

review9 = Review.new(jessica2, 4, "Good food.", average_resturant)

review10 = Review.new(jessica3, 2, "Meh... The coffee was good at least", okay_resturant)
review11 = Review.new(jessica3, 3, "Honestly, what's with the hype, I'm still hungry", high_resturant)

review12 = Review.new(steven, 1, "How is this place still running? Everyone just comes to see the rat kingdom behind the wall.", bad_resturant)
review13 = Review.new(steven, 1, "Nopee, I got sick here and I keep having war flashbacks", okay_resturant)
review14 = Review.new(steven, 5, "Are you going to find something cheaper? No, so this is the best", average_resturant)
review15 = Review.new(steven, 5, "I saw Kanye here! The food was good too!", high_resturant)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line