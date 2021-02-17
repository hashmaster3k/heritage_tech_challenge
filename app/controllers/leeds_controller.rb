class LeedsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.js
    end
    @leeds = Leed.order("created_at DESC")
  end

  def new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @leed = Leed.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone: params[:phone]
    )

    if @leed.save
      flash[:success] = "Lead, #{@leed.name}, successfully created!"
      respond_to do |format|
        format.html { redirect_to root_url }
        format.js
      end
    else
      flash[:alert] = "Something went wrong. Contact administrator if message persists."
      render ''
    end
  end
end
