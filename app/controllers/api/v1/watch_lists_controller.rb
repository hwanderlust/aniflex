class Api::V1::WatchListsController < ApplicationController

  def index
    @watch_lists = Watchlist.all
    render json: @watch_lists
  end

  def show
    render json: @watch_list
  end

  def create
    @watch_list = Watchlist.new(watchlist_params)
  end

  private
  def watchlist_params
    params.require(:watch_list).permit(:user_id, :anime_id)
  end
end
