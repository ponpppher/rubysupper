Rails.application.routes.draw do
  root "feeds#top.html"
  resources :feeds
end
