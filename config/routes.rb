Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "transactions#index"

  resource :transactions, only: [:index, :create]
end
