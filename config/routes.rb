Rails.application.routes.draw do
  resources :rows, only: [:index, :show]
  resources :columns, only: [:index, :show]
end
