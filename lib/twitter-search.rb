require 'open-uri'
require 'json'

class TwitterSearch
  URL = "http://search.twitter.com/search.json"
  TYPE = "recent"
  LANG = "en"
  MAX = 100
  
  LINK = "http://"
  
  def initialize(keyword, amount = MAX)
    @keyword = keyword
    @query = CGI::escape(keyword)
    @results = []
    @url = "#{URL}?q=#{@query}&lang=#{LANG}&result_type=#{TYPE}&rpp=#{amount}"
    response = JSON.parse(open(@url).read)
    process(response)
  end
  
  def all
    @results
  end
  
  private
  
  def process(response)
    response["results"].each do |tweet|
      msg = tweet["text"]
      @results << tweet["text"] unless msg.include?(LINK)
    end
  end
end
