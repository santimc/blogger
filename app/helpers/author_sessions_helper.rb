module AuthorSessionsHelper
  def require_login
    unless current_user
      redirect_to root_path
      return false
    end
  end
end
