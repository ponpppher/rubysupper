class SessionsController < ApplicationController
  def new
  end

  def create
    # search exist user from email
    user = User.find_by(params[:session][:email].downcase)

    # confirm user exist and password authenticate
    if user && user.authentecate(params[:session][:password])
      # move to log in page
      redirect_to sessions_new_path
    else
      # display message
      flash.now[:danger] = "login failed"
      # display login page
      redner 'new'
    end
end
