Rails.application.routes.draw do
  root "feeds#top"
  resources :feeds do
    collection do
      post :confirm
    end
  end

  resources :users, only:[:new, :create, :show]
  resources :sessions, only:[:new, :create, :destroy]
  resources :favorites, only:[:create, :destroy]
  resources :likes, only:[:index, :destroy]

  mount LetterOpenerWeb::Engine, at:"/letter_opener" if Rails.env.development?
end
