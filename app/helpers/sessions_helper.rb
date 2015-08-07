module SessionsHelper

  # Logs in given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Logs out any user.
  def log_out
    session[:user_id] = nil
  end

  # Returns current user.
  def current_user
    User.find_by(id: session[:user_id])
  end

  # Returns true if given user is current user.
  def current_user?(user)
    user == current_user
  end

  # Returns true if a user is logged in.
  def logged_in?
    !current_user.nil?
  end

end
