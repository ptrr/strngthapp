Rails.application.routes.draw do
  devise_for :users
  root "programs#index"

  resources :programs do
  end

  post '/get_strong', controller: :programs, action: :get_strong
  post '/level', controller: :programs, action: :level
end
