class BookmarksController < ApplicationController

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.movie_id = params[:bookmark][:movie_id]
    @bookmark.list_id = params[:list_id]
    # raise
    @bookmark.save
    # raise
    redirect_to list_bookmarks_path
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
