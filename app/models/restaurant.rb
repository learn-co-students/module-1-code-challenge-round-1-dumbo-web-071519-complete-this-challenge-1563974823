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

  def get_all_reviews
    Review.all.select do |review|
       review.restaurant == self
    end
  end

  def customers
    self.get_all_reviews.map do |review|
      review.customer
    end.uniq
  end

  def reviews
    self.get_all_reviews.map do |review|
      review #review.content if you only want the content 
    end
  end

  def get_all_ratings
    self.get_all_reviews.map do |review|
      review.rating
    end
  end

  def average_star_rating
    total_rating = 0
    amount = self.get_all_ratings.each do |rating|
      total_rating += rating
    end
    #binding.pry
    return total_rating.to_f / amount.size
  end

  def longest_review
    max = 0
    longest = nil
    self.get_all_reviews.each do |review|
      if review.content.size > max
        max = review.content
      end
    end
  end
end
