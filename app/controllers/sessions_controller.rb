class SessionsController < ApplicationController
  skip_before_action :require_user, only: [:create]

  def create
    authenticate(request.env['omniauth.auth'])
    redirect_to user_path(session[:user_id])
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def authenticate(auth)
    user = User.find_by_uid(auth['uid']) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
  end
end
