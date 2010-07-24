class MainController < ApplicationController
  def index
    @keyword = params[:keyword]
    @tweets = Tweet.all(:conditions => ["keyword = ?", @keyword]) unless @keyword.nil?
    respond_to do |format|
      format.html
      format.js
    end
  end
end
