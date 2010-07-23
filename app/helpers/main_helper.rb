module MainHelper
  def display(tweet)
    partition = tweet.split
    "#{partition.first}<br /><h1>#{tweet.keyword}</h1>#{partition.last}"
  end
end
