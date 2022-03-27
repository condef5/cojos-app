Rails.application.routes.draw do
  resources :matches do
    resources :shuffles, only: :index, module: :matches
  end
  resources :players, only: %i[show create destroy] do
    resources :pays, module: :players
  end
  root 'home#index'
end
