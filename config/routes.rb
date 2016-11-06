Rails.application.routes.draw do

  get 'notifications/index'

  get 'notifications/create'

  get 'notifications/update'

  root 'home#index'

  devise_for :users, controllers: { registrations: "registrations" }
  get 'comments/index'


  patch 'comments/update', to: 'comments#update'
  get '/profiles/index', to: 'profiles#index'

  get 'profiles/update'
  get '/write_answer',to: 'questions#write_answer'
  get 'users/update_profile', to:'users#update_profile'
  get '/pages/searches', to: 'searches#index'
  get '/seaches', to: 'searches#index'
  get '/profiles/my-questions', to: 'questions#my_questions'
  get '/profiles/my-answers', to: 'questions#my_answers'


  resources :searches
  resources :questions do
    resources :answers

  end
  resources :users do
      resources :profiles
  end

  get 'pages/index'
  get 'pages/about'

end
