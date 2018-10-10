Rails.application.routes.draw do
  root "lists#top.html"
  resources :lists do
    collection do
      post :confirm
    end
  end
end
