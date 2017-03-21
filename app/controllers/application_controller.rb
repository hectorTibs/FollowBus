class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   layout :layout_by_resource

  private

  def layout_by_resource
    if devise_controller?
      "login"
    else
      "application"
    end
  end
  protected
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to login_path, :notice => 'if you want to add a notice'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
end
