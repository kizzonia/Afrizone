class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update, :destroy]
  #get looping
  def index
    @genres = Genre.all.order('title ASC')
  end

  def show
  end

  def new
    @genre = Genre.new
  end

  def edit
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to @genre, notice: "Successful"
    else
      render 'new'
    end
  end

  def update
    if @genre.update(genre_params)
      redirect_to @genre
    else
      render 'edit'
    end
  end

  def destroy
    @genre.destroy
    redirect_to @genre
  end


  private
    def set_genre
      @genre = Genre.find(params[:id])
    end
    #set params
    def genre_params
      params.require(:genre).permit(:title, :description, :type, :thumbnail)
    end

end
