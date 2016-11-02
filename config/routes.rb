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


  # MOVIES
  # read
  get("/movies", { :controller => 'movies', :action => "index"})
  get("/movies/:id", { :controller => "movies", :action => "profile"})

  # create
  get("/new_movie", { :controller => "movies", :action => "new_form"})
  get("/create_movie", { :controller => "movies", :action => "add_movie"})

  # update
  get("/movies/:id/edit", { :controller => "movies", :action => "edit_form"})
  get("/movies/:id/updated", { :controller => "movies", :action => "update_movie"})

  # delete
  get("/movies/:id/delete", { :controller => "movies", :action => "delete"})


  # ACTORS
  # read
  get("/actors", { :controller => 'actors', :action => "index"})
  get("/actors/:id", { :controller => "actors", :action => "profile"})

  # create
  get("/new_actor", { :controller => "actors", :action => "new_form"})
  get("/create_actor", { :controller => "actors", :action => "add_actor"})

  # update
  get("/actors/:id/edit", { :controller => "actors", :action => "edit_form"})
  get("/actors/:id/updated", { :controller => "actors", :action => "update_actor"})

  # delete
  get("/actors/:id/delete", { :controller => "actors", :action => "delete"})

end
