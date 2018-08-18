Rails.application.routes.draw do
  resources :rows, only: [:index, :show]
end
