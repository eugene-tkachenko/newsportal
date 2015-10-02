class AdminController < ApplicationController
before_action :user_admin?, only: [:index]

  def index
    @article = Article.new
  end

  private
  def user_admin?
    if user_signed_in? && current_user.role?('admin')
      flash.now[:alert] = "Successfully signed in to admin panel"
    else
      redirect_to root_path
      flash[:alert] = "You should have admin rights"
    end
  end
end
