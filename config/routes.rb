# config/routes.rb

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root to: 'home#pages'

  namespace :api do
    namespace :v1 do
    resources :members
        resources :events

    end
  end
end