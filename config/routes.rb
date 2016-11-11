Rails.application.routes.draw do

  get 'reviews/new'

  get 'reviews/create'

  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  # get 'users/new'

  # get 'users/create'

  # root 'cocktails#index'

  resources :cocktails  do
    resources :doses, only:[:new, :create]
      resources :reviews, only:[:new, :create] do
    end
  end

  resources :doses, only:[:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




