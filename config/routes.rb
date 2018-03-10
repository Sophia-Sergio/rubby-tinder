Rails.application.routes.draw do
  devise_for :users

  resources :post do
    member do
      get 'asjhaskj/asjdkash'
    end
    collection do
      get 'asjhaskj/asjdkash'
    end
  end

  get 'search', to: 'pages#search'
  post 'interactions', to: 'interactions#create' 

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
