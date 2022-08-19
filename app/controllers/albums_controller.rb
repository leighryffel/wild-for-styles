class AlbumsController < ApplicationController
  # READ /albums
  def index
    render json: Album.all, status: :ok
  end

  # READ /albums/:id
  def show
    render json: Album.find_by(id: params[:id]), status: :ok
  end
end
