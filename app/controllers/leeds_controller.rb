class LeedsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.js
    end
    @leeds = Leed.all
  end

  def new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    leed = Leed.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone: params[:phone]
    )

    if leed.save
      respond_to do |format|
        format.html{redirect_to root_url}
        format.js
        flash[:success] = "Lead, #{leed.name}, successfully created!"
      end
    else
    end
  end
end
