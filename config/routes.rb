Rails.application.routes.draw do

  get 'profiles/index'

  get 'profiles/update'

  resources :questions do
    resources :answers
  end
  resources :users
  get '/', to: 'pages#index'

  get 'pages/about'

end
