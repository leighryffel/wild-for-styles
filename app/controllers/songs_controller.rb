class SongsController < ApplicationController
  # READ /songs
  def index
    render json: Song.all, status: :ok
  end

  # READ /songs/:id
  def show
    render json: Song.find_by(id: params[:id]), status: :ok
  end

  # PATCH /songs/:id
  def update
    song = Song.find(params[:id])
    song.update(song_params)
    render json: song
  end

  # READ /hottest_song
  def hottest_song
    render json: Song.hottest_song, status: :ok
  end

  private
  def song_params
    params.permit(:title, :likes, :length, :album_id)
  end

end
