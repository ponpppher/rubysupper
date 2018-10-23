class SessionsController < ApplicationController
  def new
  end

  def create
    # search exist user from email
    user = User.find_by(email: params[:session][:email].downcase)

    # confirm user exist and password authenticate
    if user && user.authenticate(params[:session][:password])
      # set userid into session
      session[:user_id] = user.id
      # move to user detail page
      redirect_to user_path(user.id)
    else
      # display message
      flash.now[:danger] = 'login failed'
      # display login page
      render 'new'
    end
  end

  def destroy
  session.delete(:user_id)
    flash.now[:notice] = 'log out'
    redirect_to new_session_path
  end

end
