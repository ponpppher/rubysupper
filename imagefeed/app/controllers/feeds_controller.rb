class FeedsController < ApplicationController
  def index
    @feed = Feed.all.reverse_order
  end

  def new
    @feed = Feed.new
  end

  def create
    Feed.create(feed_params)

    redirect_to new_feed_path
  end

private
  def feed_params
    params.require(:feed).permit(:content)
  end
end
