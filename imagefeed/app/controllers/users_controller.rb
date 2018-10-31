class UsersController < ApplicationController
  # Get /users/new
  def new
    @user = User.new
  end
end
