Rails.application.routes.draw do
  get 'artists/index'
  get 'artists/show'
  get 'artists/new'
  get 'artists/create'
  get 'artists/edit'
  get 'artists/update'
  root 'boards#index'
  resources :boards
  resources :artists
end
