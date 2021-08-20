Rails.application.routes.draw do
  root to: "home#index"

  resources :ledgers, only: [:index, :show, :create, :update, :destroy] do
    resources :credit_cards, only: [:index, :show, :create, :update, :destroy] do
      get :calculate_month_interest
    end
  end
end
