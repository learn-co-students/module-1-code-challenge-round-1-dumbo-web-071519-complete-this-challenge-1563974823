require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ashna = Customer.new("Ashna", "Shah")
terry = Customer.new("Terry", "Lee")
milan = Customer.new("Milan", "Nikolovik")
mel = Customer.new("Melissa", "LeBruin")
mad = Customer.new("Madeline", "Something")
peeter = Customer.new("Peeter", "Lamp")
michael = Customer.new("Michael", "Hotz")

babbo = Restaurant.new("Babbo")
sugarfish = Restaurant.new("SugarFish")
kazunori = Restaurant.new("Kazunori")
legacyrecords = Restaurant.new("Legacy Records")
tenzen = Restaurant.new("TenZen")
mellowyellow = Restaurant.new("Mellow Yellow")

michael.add_review(babbo, "expensive but good", 5)
michael.add_review(sugarfish, "expensive but good", 5)
michael.add_review(legacyrecords, "good vibes bad food", 3)
michael.add_review(sugarfish, "sublime", 3)
ashna.add_review(sugarfish, "sublime", 5)
mel.add_review(sugarfish, "sublime sublimesublimesublimesublimesublimesublimesublimesublimesublimesublimesublimesublimesublimesublimesublimesublimesublimesublimesublimesublime", 5)







binding.pry
0 #leave this here to ensure binding.pry isn't the last line
