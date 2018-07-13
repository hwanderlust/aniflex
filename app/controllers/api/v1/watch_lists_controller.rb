class Api::V1::WatchListsController < ApplicationController

  def index
    @watch_lists = WatchList.all
    render json: @watch_lists
  end

  def show
    render json: @watch_list
  end

  def create
    @watch_list = WatchList.new(watchlist_params)
    # if @watch_list.valid?
      @watch_list.save
      render json: @watch_list
    # end
    # @user = User.find_or_create_by(email: user_params[:email])
    # render json: @user, status: :created, location: api_v1_user_path(@user)
  end

  private
  def watchlist_params
    params.require(:watch_list).permit(:name, :user_id, :anime_id)
  end
end
