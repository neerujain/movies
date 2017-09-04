class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path, :notice => "Successfully added movie."
    else
      flash.now[:alert] = "#{@movie.errors.first}"
      render :action => :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :category, :year, :director, :rating)
  end
end