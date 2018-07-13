class WatchListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :anime_id, :name
end
