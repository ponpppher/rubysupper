Rails.application.routes.draw do
  root "lists#top.html"
  resources :lists do
    collection do
      post :confirm
    end
  end
  #get '/lists', to: 'lists#index'
  #get 'lists/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
