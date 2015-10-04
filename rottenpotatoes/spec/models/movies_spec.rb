require 'spec_helper'

describe Movie do

  before do
    Movie.create(title: "Star Wars 5", rating: "PG", director: "George Lucas", release_date:  "1977-05-25")
    Movie.create(title: "Star Wars 6", rating: "PG", director: "George Lucas", release_date:  "1977-05-25")
    @my_movie = Movie.create(title: "Awesome Movie", rating: "PG", director: "Me", release_date:  "1977-05-25")
    @some_movie = Movie.create(title: "Some Movie", rating: "PG", release_date:  "1977-05-25")
    @movie = Movie.create(title: "Star Wars", rating: "PG", director: "George Lucas", release_date:  "1977-05-25")
  end

  describe "same_director" do
    context "when there are several movies for this director" do
      #expect(Movie.same_director(@movie.id)).to eq []
    end
    context "when there is only one movie for this director" do
      #expect(Movie.same_director(@my_movie.id)).to eq []
    end
    context "when there aren't any directors for this movie" do
      #expect(Movie.same_director(@some_movie.id)).to eq []
    end
  end
end
