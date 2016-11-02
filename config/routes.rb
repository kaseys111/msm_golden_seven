Rails.application.routes.draw do
  # root
  get("/", { :controller => 'movies', :action => 'index'})

  # DIRECTORS
  # read
  get("/directors", { :controller => 'directors', :action => "index"})
  get("/directors/:id", { :controller => "directors", :action => "profile"})

  # create
  get("/new_director", { :controller => "directors", :action => "new_form"})
  get("/create_director", { :controller => "directors", :action => "add_director"})

  # update
  get("/directors/:id/edit", { :controller => "directors", :action => "edit_form"})
  get("/directors/:id/updated", { :controller => "directors", :action => "update_director"})

  # delete
  get("/directors/:id/delete", { :controller => "directors", :action => "delete"})


  # actors/movies
  get("/movies", { :controller => 'movies', :action => 'index'})
  get("/actors", { :controller => "actors", :action => "index"})
end
