class CommentsController < ApplicationController
  # READ /comments
  def index
    render json: Comment.all, status: :ok
  end

  # READ /comments/:id
  def show
    comment = Comment.find(params[:id])
    render json: comment, status: :ok
  end
  
  # POST /comments
  def create
    comment = Comment.create!(comment_params)
    render json: comment, status: :created
  end

  # PATCH /comments/:id
  def update
    comment = Comment.find(params[:id])
    comment.update(comment_params)
    render json: comment
  end

  # DELETE /comments/:id
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    head :no_content
  end

  private
  
  def comment_params
    params.permit(:comment, :album_id)
  end
end
