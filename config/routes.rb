Rails.application.routes.draw do
  # Routes for the Hole resource:
  # CREATE
  get "/holes/new", :controller => "holes", :action => "new"
  post "/create_hole", :controller => "holes", :action => "create"

  # READ
  get "/holes", :controller => "holes", :action => "index"
  get "/holes/:id", :controller => "holes", :action => "show"

  # UPDATE
  get "/holes/:id/edit", :controller => "holes", :action => "edit"
  post "/update_hole/:id", :controller => "holes", :action => "update"

  # DELETE
  get "/delete_hole/:id", :controller => "holes", :action => "destroy"
  #------------------------------

  # Routes for the Score resource:
  # CREATE
  get "/scores/new", :controller => "scores", :action => "new"
  post "/create_score", :controller => "scores", :action => "create"

  # READ
  get "/scores", :controller => "scores", :action => "index"
  get "/scores/:id", :controller => "scores", :action => "show"

  # UPDATE
  get "/scores/:id/edit", :controller => "scores", :action => "edit"
  post "/update_score/:id", :controller => "scores", :action => "update"

  # DELETE
  get "/delete_score/:id", :controller => "scores", :action => "destroy"
  #------------------------------

  # Routes for the Match resource:
  # CREATE
  get "/matches/new", :controller => "matches", :action => "new"
  post "/create_match", :controller => "matches", :action => "create"

  # READ
  get "/matches", :controller => "matches", :action => "index"
  get "/matches/:id", :controller => "matches", :action => "show"

  # UPDATE
  get "/matches/:id/edit", :controller => "matches", :action => "edit"
  post "/update_match/:id", :controller => "matches", :action => "update"

  # DELETE
  get "/delete_match/:id", :controller => "matches", :action => "destroy"
  #------------------------------

  # Routes for the Course resource:
  # CREATE
  get "/courses/new", :controller => "courses", :action => "new"
  post "/create_course", :controller => "courses", :action => "create"

  # READ
  get "/courses", :controller => "courses", :action => "index"
  get "/courses/:id", :controller => "courses", :action => "show"

  # UPDATE
  get "/courses/:id/edit", :controller => "courses", :action => "edit"
  post "/update_course/:id", :controller => "courses", :action => "update"

  # DELETE
  get "/delete_course/:id", :controller => "courses", :action => "destroy"
  #------------------------------

  # Routes for the Team resource:
  # CREATE
  get "/teams/new", :controller => "teams", :action => "new"
  post "/create_team", :controller => "teams", :action => "create"

  # READ
  get "/teams", :controller => "teams", :action => "index"
  get "/teams/:id", :controller => "teams", :action => "show"

  # UPDATE
  get "/teams/:id/edit", :controller => "teams", :action => "edit"
  post "/update_team/:id", :controller => "teams", :action => "update"

  # DELETE
  get "/delete_team/:id", :controller => "teams", :action => "destroy"
  #------------------------------

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
