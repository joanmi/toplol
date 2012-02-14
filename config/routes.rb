Toplol::Application.routes.draw do
  get "welcome/index"
  get "/auth/twitter/callback" => "sessions#create"
  get '/logout' => "sessions#destroy"
  resources :champions
  root :to => "welcome#index"
end
