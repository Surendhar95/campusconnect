Rails.application.routes.draw do

  root 'home#index'

  devise_for :users, controllers: { registrations: "registrations" }
  get 'comments/index'


  patch 'comments/update', to: 'comments#update'
  get '/profiles/index', to: 'profiles#index'

  get 'profiles/update'
  get '/write_answer',to: 'questions#write_answer'
  get 'users/update_profile', to:'users#update_profile'





  resources :questions do
    resources :answers

  end
  resources :users do
    resources :profiles
  end
  get 'pages/index'
  get 'pages/about'

end
