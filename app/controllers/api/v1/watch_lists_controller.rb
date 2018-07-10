class Api::V1::WatchListsController < ApplicationController

  def index
    @watch_lists = Watchlist.all
  end

  def show
    #code
  end

  def create
    @watch_list = Watchlist.new(watchlist_params)
  end

  private
  def watchlist_params
    params.require(:watch_list).permit()
  end
end
