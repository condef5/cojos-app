Rails.application.routes.draw do
  resources :matches do
    resources :shuffles, only: :index, module: :matches
  end
  resources :players, only: %i[create destroy]
  root 'home#index'
end
