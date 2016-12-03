module SessionsHelper


#input is a user, establishes a session cookie on their browser
  def log_in(user)
    session[:user_id] =user.id
  end

#If the user is already logged in, it will return that user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) ##current_user is an instance, because we dont want multiple sessions for a user.
  end

  def logged_in?
    !current_user.nil? ##! is the not operator, also known as "bang". Returns true if is a user logged in, and false if not logged in. Useful for tailoring the view for the specific user
end


def log_out
  session.delete(:user_id)
  @current_user =nil
end

end
