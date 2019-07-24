Bundler.require
require 'bundler/setup'

require_rel '../app'


p megan = Customer.new("Megan", "Adams")
p simon = Customer.new("Simon", "Wong")

p kfc = Restaurant.new("KFC")
p publix = Restaurant.new("Publix")

megan = Customer.new("Megan", "Adams")
simon = Customer.new("Simon", "Wong")

kfc = Restaurant.new("KFC")
publix = Restaurant.new("Publix")

review1 = Review.new(kfc, megan, 3, 'Meh')
review2 = Review.new("KFC", megan, 4, 'Meh')