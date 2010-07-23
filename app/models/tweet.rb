class Tweet < ActiveRecord::Base
  validates_presence_of :message, :keyword
  validates_uniqueness_of :message
end
