class Api::V1::AnimesController < ApplicationController

  def index
    @animes = Anime.all
  end

  def show

  end

  def create
    @anime = Anime.new(anime_params)
  end

  private
  def anime_params
    params.require(:anime).permit()
  end
end
