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

  def customers
    reviews.map do |review|
      review.customer
    end.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    ratings_obj = reviews.map do |review|
      review.rating.to_i
    end
    rating_total = ratings_obj.inject(0) do |total, rating|
        total + rating
    end

    return rating_total / ratings_obj.length
  end







end
