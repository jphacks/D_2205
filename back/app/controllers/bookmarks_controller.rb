class BookmarksController < ApplicationController
  before_action :set_bookmark, only: %i[ destroy ]

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      render status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
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
    params.require(:bookmark).permit(:user, :post)
  end
end
