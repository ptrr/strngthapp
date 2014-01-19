Rails.application.routes.draw do
  root "programs#index"

  resources :programs do
  end

  post '/get_strong', controller: :programs, action: :get_strong
end
