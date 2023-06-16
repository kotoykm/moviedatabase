class MoviesController < ApplicationController
  def index
    @movie = Movie.all()
    
    render layout: 'layMovie'
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movie_inicio_path
    else
      render :new
    end
  end

  def new
    render layout: 'layMovie'
  end

  def success
    render layout: 'layMovie'
  end
  def movie_params
    params.require(:movie).permit(:name, :synopsis, :director)
  end
end
