class DirectorsController < ApplicationController

  def index
    @alldirectors = Director.all
  end

  def profile
    @director = Director.find(params[:id])
  end

  # create
  def new_form
  end

  def add_director
    @director = Director.new

    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save
    redirect_to("http://localhost:3000/directors/" + @director.id.to_s)
  end

  # update
  def edit_form
    @director = Director.find(params[:id])
  end

  def update_director
    @director = Director.find(params[:id])

    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save
    redirect_to("http://localhost:3000/directors/" + @director.id.to_s)
    
  end

  # delete
  def delete
    @director = Director.find(params[:id])
    @director.destroy

    redirect_to("http://localhost:3000/directors")
  end

end
