class LeedsController < ApplicationController
  def index
    @leeds = Leed.all
  end

  def new
    respond_to do |format|
      format.html
      format.js
    end
  end
end
