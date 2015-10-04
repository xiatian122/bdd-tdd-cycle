Given (/^the following movies exist:$/) do |table|
  table.hashes.each do |movie|
    Movie.create movie
  end
end

Given (/^(?:|I )am on the details page for "(.*?)"/) do |movie|
  visit movie_path(Movie.find_by_title(movie))
end

Then (/^(?:|I )should be on the Similar Movies page for "(.*?)"/) do |movie|
  expect(current_url).to eq same_director_url(Movie.find_by_title(movie))
end

Then (/the director of "(.*?)" should be "(.*?)"/) do |movie, director|
  expect(Movie.find_by_title(movie).director).to eq director
end


Then (/^(?:|I )should be on the home page$/) do
  expect(current_path).to eq '/movies'
end
