class User < ApplicationRecord
  has_many :watch_lists
  has_many :animes, through: :watch_lists
end
