require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
ali = Customer.new("Alessandra", "Vertrees")
kevin = Customer.new("Kevin", "Vertrees")

superfine = Restaurant.new("Superfine")
almar = Restaurant.new("Almar")

ali.add_review(superfine, "great energy!", 5)
kevin.add_review(superfine, "horrible food", 2)

ali.add_review(almar,"awesome olive oil", 4)
kevin.add_review(almar, "great bread", 5)
ali.add_review(almar, "hit on by gross bartender", 1)

#Expected Values For Tests
#ali.num_reviews => 3
#ali. restaurants => [superfine, almar]

#kevin.num_reviews => 2
#kevin.restaurants => [superfine, almar]

#superfine.reviews => [review(superfine, ali, "great energy!", 5), 
                        #Review(superfine, kevin "horrible food", 2)]
#almar.reviews => [Review(almar, ali, "awesome olive oil", 4), 
                        #Reviewreview(almar, kevin, "great bread", 5),
                      #Review(almar, eli, "hit on by gross bartender", 1)]   

#superfine.customers => [kevin, ali]
#almar.customers =>[kevin, ali]

#superfine.average_star_rating => 5+2/2 = 7/2 = 3.5    
#almar.average_star_rating => 4+5+1/3 = 10/3 = 3.33      

#superfine.review_word_count_hash => [["great energy!", 2], ["horrible food", 2]]
#almar.review_word_count_hash => [["great bread", 2], ["awesome olive oil", 3], ["hit on by gross bartender", 5]]

#Customer.find_by_first_name("Alessandra") => [#<Customer:0x00007fc67fa08d48 @first_name="Alessandra", @last_name="Vertrees">]
#Customer.find_by_name("Alessandra Vertrees") => #<Customer:0x00007fe4772c4fd0 @first_name="Alessandra", @last_name="Vertrees">
#Customer.all_names => ["Alessandra Vertrees", "Kevin Vertrees"]

#Restaurant.find_by_name("Almar") => #<Restaurant:0x00007fa239a97da0 @name="Almar">

#r1 = Review.new(superfine, kevin, "ok music", 4) => #<Review:0x00007fa2399b7d68
#  @content="ok music",
#  @customer=#<Customer:0x00007fa239a97e40 @first_name="Kevin", @last_name="Vertrees">,
#  @rating=4.0,
#  @restaurant=#<Restaurant:0x00007fa239a97df0 @name="Superfine">>
# r1.restaurant => #<Restaurant:0x00007fa239a97df0 @name="Superfine">
# r1.customer => #<Customer:0x00007fa239a97e40 @first_name="Kevin", @last_name="Vertrees">
# r1.content => "ok music"
# r1.rating => 4.0

binding.pry
0 #leave this here to ensure binding.pry isn't the last line