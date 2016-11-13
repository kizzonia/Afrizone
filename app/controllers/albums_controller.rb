class AlbumsController < ApplicationController
  before_action :find_genre
  before_action :find_album, only: [:show]

  def index
    if params[:genre].blank?
      @albums = Album.all.order('title ASC')
    else
      @genre_id = Genre.find_by(name: params[:genre])
      @albums = Album.where(genre_id: @genre_id).order('title ASC')
  end


  def new
    @album = Album.new
    @genres = Genre.all
  end

  def create
    @albumm = Album.new(albums_params)
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
    end
    def find_genre
      @genre = Genre.find(params[:genre_id])
    end

    def find_album
      @album = Album.find(params[:id])
    end

end
