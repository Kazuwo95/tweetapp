module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id:session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def require_login
    unless logged_in?
      redirect_to new_session_path, danger: "ログインしてください"
    end
  end
  
end
