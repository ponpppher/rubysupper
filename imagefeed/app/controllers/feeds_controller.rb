class FeedsController < ApplicationController
before_action :set_feed, only:[:edit, :update, :destroy]
  def index
    @feed = Feed.all.reverse_order
  end

  def new
    if params[:back]
      @feed = Feed.new(feed_params)
    else
      @feed = Feed.new
    end
  end

  def confirm
    @feed = Feed.new(feed_params)
    redirect_to 'new' if @feed.invalid?
  end

  def create
    @feed = Feed.new(feed_params)
    if @feed.save
      redirect_to feeds_path, notice: 'new feed posted'
    else
      render 'new'
    end 
  end

  def edit
  end

  def update
    if @feed.update(feed_params)
      redirect_to feeds_path, notice:"feed edited"
    else
      redirect_to 'edit'
    end
  end

  def destroy
    @feed.destroy
    redirect_to feeds_path, notice:"feed deleted"
  end

private
  def feed_params
    params.require(:feed).permit(:content)
  end

  def set_feed
    @feed = Feed.find(params[:id])
  end
end
