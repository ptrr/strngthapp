Rails.application.routes.draw do
  devise_for :users
  root "programs#index"

  resources :programs do
  end

  resources :pages do
  end

  get '/calculators/wendler', controller: :calculators, action: :wendler
  resources :calculators do
  end

  get '/disclaimer', controller: :pages, action: :disclaimer
  post '/get_strong', controller: :programs, action: :get_strong
  post '/level', controller: :programs, action: :level
end
