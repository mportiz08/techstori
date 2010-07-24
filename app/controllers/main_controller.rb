class MainController < ApplicationController
  def index
    @keyword = params[:keyword]
    respond_to do |format|
      format.html
      format.js
    end
  end
end
