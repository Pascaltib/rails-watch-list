class BookmarksController < ApplicationController
  def create
    @movies = Movie.all

    # @movie_selection = @movies.select { |movie| movie.id == params[:bookmark][:movie_id]}
    @movie_selection = params[:bookmark][:movie_id]
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new

    @movie_selection.each do |movie_index|
      bookmark = Bookmark.new
      movie = Movie.find(movie_index)
      bookmark.movie = movie
      bookmark.list = @list
      bookmark.save

    end
    redirect_to list_path(@list)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
