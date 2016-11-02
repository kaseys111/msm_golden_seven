class MoviesController < ApplicationController

  def index
    @allmovies = Movie.all
  end

  def profile
    @movie = Movie.find(params[:id])
  end

  # create
  def new_form
    @alldirectors = Director.all
  end

  def add_movie
    @movie = Movie.new

    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.director_id = params[:director]
    @movie.image_url = params[:image_url]

    @movie.save

    redirect_to("http://localhost:3000/movies/" + @movie.id.to_s)
  end

  # update
  def edit_form
    @movie = Movie.find(params[:id])
    @alldirectors = Director.all

    if @movie.director_id == nil
      @director_name = "-"
    else
      @director_name = Director.find(@movie.director_id).name

    end
  end

  def update_movie
    @movie = Movie.find(params[:id])

    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]

    if
      params[:director_id] == "-"
      @movie.director_id = nil
    else
      @movie.director_id = params[:director]
    end

    @movie.save

    redirect_to("http://localhost:3000/movies/" + @movie.id.to_s)
  end

  # delete
  def delete
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to("http://localhost:3000/movies")
  end

end
