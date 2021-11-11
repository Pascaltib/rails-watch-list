# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'open-uri'
require 'json'
Bookmark.delete_all
Movie.delete_all
List.delete_all

url = "http://tmdb.lewagon.com/movie/top_rated"
json = open(url).read
content = JSON.parse(json)["results"]
poster_path = "https://image.tmdb.org/t/p/w500"

content.first(10).each do |movie|
  poster_url_full = poster_path + movie["poster_path"]
  Movie.create!(title: movie["original_title"], overview: movie["overview"], poster_url: poster_url_full, rating: movie["vote_average"])
end
