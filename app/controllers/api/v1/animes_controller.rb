class Api::V1::AnimesController < ApplicationController

  def self.fetch
    # baseUrl = "https://api.jikan.moe/search"
    # type = type # anime, manga, person, character, season
    # query = query # q=Fate/Zero
    # page = "&page=1" # &page=1
    # response = RestClient.get("#{baseUrl}/#{type}/q=#{query}/#{page}")
    result = JSON.parse(RestClient.get("https://api.jikan.moe/search/anime?q=Fate/Zero&page=1
"))
    puts result["result"][0]["title"]
  end

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
