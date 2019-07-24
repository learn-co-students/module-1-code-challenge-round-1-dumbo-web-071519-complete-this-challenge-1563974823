class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  def our_reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end
    
  def customers
    our_reviews.map do |review|
      review.customer
    end.uniq
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def average_star_rating
    our_ratings = our_reviews.map do |review|
      review.rating 
    end
    our_ratings.sum / our_ratings.count.to_f
  end
 
  def our_review_content
    our_reviews.map do |review|
      review.content
    end
  end

  # def longest_review
  #    our_review_content.inject do |memo, content|
  #     if memo.length > content.length
  #         return memo
  #     end
  #   end
  # end


end
