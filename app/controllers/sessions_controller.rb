class SessionsController < ApplicationController
  def create
    authenticate(request.env['omniauth.auth'])
    redirect_to friends_path
  end

  def destroy
    cookies[:user_id] = nil
  end

  private

  def authenticate(auth)
    user = User.find_by_provider_and_uid(auth['provider'], auth['uid']) ||
           User.create_with_omniauth(auth)
    cookies[:user_id] = user.id
  end
end
