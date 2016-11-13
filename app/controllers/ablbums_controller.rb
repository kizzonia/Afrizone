class AlbumsController < ApplicationController
  before_action :find_genre
  before_action :find_album, only: [:show]
  def new
    @album = @genre.albums.new
  end

  def create
    @albumm = @genre.albums.new(albums_params)
    if @album.save
      redirect_to genre_album_path(@genre)
    else
      render 'new'
    end
  end

  def show
  end

  private

    def albums_params
      params.require(:album).permit(:name, :notes, :year, :artist, :history)
    def find_genre
      @genre = Genre.find(params[:genre_id])
    end

    def find_album
      @album = Album.find(params[:id])
    end

end
