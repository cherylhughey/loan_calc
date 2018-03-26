Rails.application.routes.draw do
  resources :calculator
  get 'about' => 'calculator#about'
  root 'calculator#index'
end
