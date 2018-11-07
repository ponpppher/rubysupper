class LikesController < ApplicationController
  def index
    @feed = Feed.all
  end
end