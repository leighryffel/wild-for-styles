class SongsController < ApplicationController
  # READ /songs
  def index
    render json: Song.all, status: :ok
  end

  # READ /songs/:id
  def show
    render json: Song.find_by(id: params[:id]), status: :ok
  end
end
