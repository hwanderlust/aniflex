class Api::V1::AnimesController < ApplicationController
  before_action :set_anime, only: [:show, :index]

  def self.fetch
    # baseUrl = "https://api.jikan.moe/search"
    # type = type # anime, manga, person, character, season
    # query = query # q=Fate/Zero
    # page = "&page=1" # &page=1
    # response = RestClient.get("#{baseUrl}/#{type}/q=#{query}/#{page}")
    result = JSON.parse(RestClient.get("https://api.jikan.moe/search/anime?q=Fate/Zero&page=1")).result["result"][0]["title"]
  end

  def index
    @animes = Anime.all
    render json: @animes, status: 200
  end

  def show
    # someone would make a request to /anime/<our_id>
    # brings them to this show controller action
    # find the anime in your backend `anime = Anime.find(params[:our_id])`
    # make a request to the external API to get the dynamic data `their_data`
    # figure out the structure you want to send back to your front-end
    # render json of anime structure (our_data + their_data)

  end

  def create
    # rest client .get(apiurl + anime_params[:name])
    @anime = Anime.new(anime_params)
  end

  def search
    # get the search param fron params `params[:term]`
    result = JSON.parse(RestClient.get("https://api.jikan.moe/search/anime?q=#{params[:term]}&page=1"))

    # send that back to the front-end
    render json: {
      my_results: result["result"][0],
      my_message: 'hello'
    }
  end

  private

  def set_anime
    @anime = Api::V1::AnimesController.fetch
  end

  def anime_params
    params.require(:anime)
  end
end
