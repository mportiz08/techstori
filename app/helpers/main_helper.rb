module MainHelper
  def display(tweet)
    partition = tweet.split
    if tweet.keyword.eql?("google")
      "<li>#{partition.first}<br />
       <h1 class=\"#{tweet.keyword}\"><span class=\"g\">g</span><span class=\"oe\">o</span><span class=\"o\">o</span><span class=\"g\">g</span><span class=\"l\">l</span><span class=\"oe\">e</span></h1>
       <h3>#{partition.last}</h3></li>"
    else
      "<li>#{partition.first}<br /><h1 class=\"#{tweet.keyword}\">#{tweet.keyword}</h1><h3>#{partition.last}</h3></li>"
    end
  end
end
