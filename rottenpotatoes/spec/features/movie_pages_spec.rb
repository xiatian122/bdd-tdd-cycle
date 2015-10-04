require 'spec_helper'

describe "Movie Pages" do

  before {@movie = Movie.create(title: "Star Wars", rating: "PG", director: "George Lucas", release_date:  "1977-05-25")}

  describe "edit pages" do
    before {visit edit_movie_path(@movie)}
    it "should have a director field" do
      expect(page).to have_field("movie_director")
    end
  end

  describe "details pages" do
    before {visit movie_path(@movie)}
    it "should have a 'Find Movies With Same Director' link" do
      expect(page).to have_selector(:link_or_button, 'Find Movies With Same Director')
    end
  end
end
