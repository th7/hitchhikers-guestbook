HitchhikersGuestbook::Application.routes.draw do
  root 'home#index'

  resources :users, :except => [:index, :show]
  resources :sessions, :only => [:new, :create]

end
