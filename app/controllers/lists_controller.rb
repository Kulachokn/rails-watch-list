class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @list = List.find(params[:id])

    @bookmark = Bookmark.new
    @movies = @list.movies
    # @bookmark.movie = @movies

  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path
    # raise
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
