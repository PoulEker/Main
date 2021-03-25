class MoviesController < ApplicationController

  layout "movies_"

  def index
    @movie = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @upload = false
  end

  def new
    @movie = Movie.new
    @upload = true
  end

  def create
    @movie = Movie.new(movie_params)
    @upload = true

    if @movie.save
      redirect_to movies_path, notice: "Uploadet!"
    else
      render "new"
    end
  end
  
  def edit
    @movie = Movie.find(params[:id])
    @upload = true
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render :edit
    end
  end

  def destroy
    @upload = false
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to root_path, notice:  "Slettet" 
  end

  private
    def movie_params
      params.require(:movie).permit(:title, :description, :poster, :year, :imdbID)
    end

  end


