module MainHelper
  def display(tweet)
    partition = tweet.split
    "<li>#{partition.first}<br /><h1>#{tweet.keyword}</h1>#{partition.last}</li>"
  end
end
