class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :title, :rating, :released_in, :genre, :album_art
  has_many :songs
  has_many :comments
end
