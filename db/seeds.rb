require 'twitter-search'

companies = ["apple", "microsoft", "google"]
companies.each do |company|
  search = TwitterSearch.new(company)
  search.all.each do |msg|
    tweet = Tweet.new(:message => msg, :keyword => company)
    tweet.save
  end
end
