class Song < ApplicationRecord
  belongs_to :album

  def self.hottest_song
    self.all.order(likes: :desc).first
  end
end
