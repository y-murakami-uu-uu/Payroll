Rails.application.routes.draw do
  resources :performances, only: [:index, :new, :create, :destroy] 
  resources :expenses, only: [:index, :new, :create, :destroy] 
  resources :payroll1s
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'payroll1s#index'
end
