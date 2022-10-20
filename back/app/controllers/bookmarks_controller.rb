class BookmarksController < ApplicationController
  before_action :set_bookmark, only: %i[ destroy ]
  def index
    user = User.find(bookmark_params[:user_id])
    @bookmarks = user.bookmarked_posts

    render json: @bookmarks
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    post = Post.find(bookmark_params[:post_id])

    if @bookmark.save
      render json: post, status: :ok
    else
      render json: @bookmark.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark.destroy
  end

  private
  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
  # Use callbacks to share common setup or constraints between actions.
  # Only allow a list of trusted parameters through.
  def bookmark_params
    params.permit(:user_id, :post_id)
  end
end
