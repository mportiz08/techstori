class Tweet < ActiveRecord::Base
  validates_presence_of :message, :keyword
  
  def split
    message.split(/(\b#{keyword}\b)/i, 2)
  end
end
