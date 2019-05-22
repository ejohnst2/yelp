Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    get 'restaurants/index'
  end

  resources :restaurants do
    collection do
      get 'top'
    end
    member do
      get 'chef'
    end
    # nested resource within restaurants
    resources :reviews, only: [:new, :create, :show]
  end

  namespace :admin do
    resources :restaurants, only: [:index]
  end

  get "reviews/:id/edit", to: "reviews#edit"
end
