Rails.application.routes.draw do


  devise_for :users

  root to: 'homes#top'
  get 'homes/about' => 'homes#about'
  resources :post_images, only:[:index, :show, :new, :create, :destroy] do
    resources :post_comments, only:[:create]
  end
  resources :users,       only:[:show, :edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
