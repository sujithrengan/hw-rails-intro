class Movie < ActiveRecord::Base
    def self.with_ratings(ratings)
        Movie.where(:rating => ratings)
    end
    def self.all_ratings()
        Movie.all.map(&:rating).uniq
    end
end