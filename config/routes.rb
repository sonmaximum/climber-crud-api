# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :locations, except: %i[new edit]
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom Route routes goodjob naming
  get '/routes/type/:id' => 'routes#getbytype'
  get '/myroutes/type/:id' => 'routes#getmyroutesbytype'
  get '/myroutes' => 'routes#getmyroutes'
  get '/routes/attempted/:id' => 'routes#getattempted'
  get '/routes/completed/:id' => 'routes#getcompleted'
  get '/routes/sent/:id' => 'routes#getsent'
  get '/routes/projects/:id' => 'routes#getprojects'
  resources :routes, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
