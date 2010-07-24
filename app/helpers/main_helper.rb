module MainHelper
  def display(tweet)
    partition = tweet.split
    "<li>#{partition.first}<br /><h1>#{tweet.keyword}</h1><h3>#{partition.last}</h3></li>"
  end
end
