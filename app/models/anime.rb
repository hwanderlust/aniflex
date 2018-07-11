class Anime < ApplicationRecord
  ##id for our database
  ##id for API/MAL id
  ##title, description, type
  has_many :watch_lists
  has_many :users, through: :watch_lists

end
