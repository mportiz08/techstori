class Tweet < ActiveRecord::Base
  validates_presence_of :message, :keyword
end
