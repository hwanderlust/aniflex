class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def create
    @user = User.find_or_create_by(name: user_params[:name])
    render json: @user, status: :created, location: api_v1_user_path(@user)
  end

  def show
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def set_user
    @user = User.find_by(id: params[:id])
  end

end
