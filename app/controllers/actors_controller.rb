class ActorsController < ApplicationController


    def index
      @allactors = Actor.all
    end

    def profile
      @actor = Actor.find(params[:id])
    end

    # create
    def new_form
    end

    def add_actor
      @actor = Actor.new

      @actor.dob = params[:dob]
      @actor.name = params[:name]
      @actor.bio = params[:bio]
      @actor.image_url = params[:image_url]

      @actor.save
      redirect_to("http://localhost:3000/actors/" + @actor.id.to_s)
    end

    # update
    def edit_form
      @actor = Actor.find(params[:id])
    end

    def update_actor
      @actor = Actor.find(params[:id])

      @actor.dob = params[:dob]
      @actor.name = params[:name]
      @actor.bio = params[:bio]
      @actor.image_url = params[:image_url]

        @actor.save
        redirect_to("http://localhost:3000/actors/" + @actor.id.to_s)

    end

    # delete
    def delete
      @actor = Actor.find(params[:id])
      @actor.destroy

      redirect_to("http://localhost:3000/actors")
    end

end
