class LeedsController < ApplicationController
  def index
    @leeds = Leed.order("created_at DESC")
  end

  def new; end

  def create
    @leed = Leed.new(leed_params)

    respond_to do |format|
      if @leed.save
        TextMessageService.new(params[:phone], params[:message]).call
        flash.now[:success] = "Lead, #{@leed.name}, successfully created!"
        format.html
        format.js
      else
        flash[:notice] = "Something went wrong. Contact administrator if message persists."
        format.html { redirect_to root_url }
        format.js
      end
    end
  end

  private

  def leed_params
    params.permit(:first_name, :last_name, :phone)
  end
end
