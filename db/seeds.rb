require 'twitter-search'

module Seeder
  def self.seed
    last = Tweet.last
    companies = ["apple", "microsoft", "google"]

    # add new tweets
    companies.each do |company|
      search = TwitterSearch.new(company)
      search.all.each do |msg|
        tweet = Tweet.new(:message => msg, :keyword => company)
        tweet.save
      end
    end

    # remove old tweets
    unless last.nil?
      Tweet.all.each do |t|
        Tweet.delete(t.id) if (t.id <= last.id)
      end
    end
  end
end

Seeder::seed
puts "seeded on #{Time.now}"
