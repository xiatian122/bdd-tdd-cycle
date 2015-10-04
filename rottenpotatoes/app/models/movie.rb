class Movie < ActiveRecord::Base

  attr_accessible :title, :rating, :description, :release_date

  def self.same_director movie_id
    director = Movie.find(movie_id).director
    return Movie.where(director: director) if director && !director.blank?
    []
  end

  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
end

