Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, except: [:destroy, :edit, :update, :new, :index] do
    resources :bookmarks, only: [:create]
  end
  resources :bookmarks, only: [:destroy]
end
