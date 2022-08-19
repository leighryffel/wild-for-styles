class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :length, :likes
  belongs_to :album
end
