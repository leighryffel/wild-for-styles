class SongsController < ApplicationController
  # READ /songs
  def index
    render json: Song.all, status: :ok
  end

  # READ /songs/:id
  def show
    render json: Song.find_by(id: params[:id]), status: :ok
  end

  # READ /hottest_song
  def hottest_song
    render json: Song.hottest_song, status: :ok
  end

end
