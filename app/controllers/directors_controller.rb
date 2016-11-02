class DirectorsController < ApplicationController

  def index
    @alldirectors = Director.all
  end

  def profile
    @director = Director.find(params[:id])
  end

  def new_form
  end

  def add_director
  end

  def edit_form
  end

  def update_director
  end

  def delete
  end

end
