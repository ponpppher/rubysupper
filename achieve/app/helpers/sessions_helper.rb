module SessionsHelper
  # set current_user's id
  def current_user
    @current_user ||=User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user.present?
  end
end
