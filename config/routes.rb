Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy

  root to: "lists#index"
end
