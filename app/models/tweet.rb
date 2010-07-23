class Tweet < ActiveRecord::Base
  validates_presence_of :message, :keyword
  
  def split
    message.split(keyword)
  end
end
