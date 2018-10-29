Rails.application.routes.draw do
  root "feeds#top.html"
  resources :feeds do
    collection do
      post :confirm
    end
  end
end
