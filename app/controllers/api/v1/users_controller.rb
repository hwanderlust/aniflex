class Api::V1::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
  end

  def show

  end

  private
  def user_params
    params.require(:user).permit()
  end
end
