class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    if current_user.server.id
      @users = User.all.visibility(true).server(current_user.server.id)
    end
  end

  def show
  end

  def update
    render :edit unless @user.update(user_params)
  end

  def destroy
    @user.destroy
    # TODO: show error notification
  end

  private

  def set_user
    @user ||= User.find(params[:id])
  end

  def user_params
    params.require(:user).permit!
  end
end
