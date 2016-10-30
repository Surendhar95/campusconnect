Rails.application.routes.draw do

  resources :questions
  resources :users
  get '/', to: 'pages#index'

  get 'pages/about'

end
