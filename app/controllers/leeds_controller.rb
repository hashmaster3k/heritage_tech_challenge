class LeedsController < ApplicationController
  def index
    @leeds = Leed.all
  end
end
