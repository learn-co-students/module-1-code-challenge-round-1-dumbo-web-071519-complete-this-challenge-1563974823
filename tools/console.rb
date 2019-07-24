require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ada = Customer.new("Ada", "Volkmer")
michael = Customer.new("Michael", "McLure")

taco = Restaurant.new("Taco Place")
greek = Restaurant.new("Greek Place")
samosa = Restaurant.new("Samosa Place")

r1 = Review.new(taco, ada, 5, "The best tacos")
r2 = Review.new(greek, ada, 3, "It's ok")
r3 = Review.new(samosa, michael, 5, "I can't believe how good this is")
r4 = Review.new(samosa, ada, 1, "The worst tacos")
r5 = Review.new(samosa, ada, 3, "Ok fine, the samosas are good")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line