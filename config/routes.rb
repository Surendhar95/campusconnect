Rails.application.routes.draw do

  get 'comments/index'


  patch 'comments/update', to: 'comments#update'
  get 'profiles/index', to: 'profiles#index'

  get 'profiles/update'
  get '/write_answer',to: 'questions#write_answer'




  resources :questions do
    resources :answers
  end
  resources :users
  get '/', to: 'pages#index'

  get 'pages/about'

end
