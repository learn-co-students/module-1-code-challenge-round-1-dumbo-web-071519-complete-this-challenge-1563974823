require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1= Customer.new("Jack","Madison")
customer2= Customer.new("Sadi","Morti")
customer3= Customer.new("Jana","Ter")
rest1=Restaurant.new("TickTock")
customer1.add_review(rest1,"Good restorant",5)
customer2.add_review(rest1,"So so",3)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line