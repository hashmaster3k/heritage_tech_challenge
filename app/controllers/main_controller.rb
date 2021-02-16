class MainController < ApplicationController
  def index
    @leeds = Leed.all
  end
end
