Rails.application.routes.draw do
root 'welcome#index'
resources :users
resources :statuses
resources :likes 
resources :sessions
delete 'sessions' => "sessions#destroy", as: 'signout'
end
