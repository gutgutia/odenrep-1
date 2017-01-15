Rails.application.routes.draw do
  root to: 'visitors#index'
  match '/users/:id/finish_signup' => 'visitors#index', via: [:get, :patch], :as => :finish_signup
  match '/confirm/:code' => 'endorsements#confirm', via: [:get]

  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users
  resources :events
  resources :endorsements

end
