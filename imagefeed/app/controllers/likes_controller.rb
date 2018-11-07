class LikesController < ApplicationController
  def index
    @like = current_user.favorites
  end
end