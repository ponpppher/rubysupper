class SessionsController < ApplicationController
  def new
  end

  def create
    # search exist user from email
    user = User.find_by(params[:session][:email].downcase)

    # confirm user exist and password authenticate
    if user && user.authentecate(params[:session][:password])
      # set userid into session
      session[:user_id] = user.id
      # move to user detail page
      redirect_to user_path(user.id)
    else
      # display message
      flash.now[:danger] = "login failed"
      # display login page
      redner 'new'
    end
  end

end
