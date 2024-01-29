Rails.application.routes.draw do
  root to: 'home#pages'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  namespace :api do
    namespace :v1 do
      resources :members do
        collection do
          delete 'destroy_multiple'
        end
      end
      resources :events
      resources :newsroom
      resources :fund_appeals
      resources :about_us
      resources :president_messages
      resources :message_heads
      resources :desk_messages
      resources :committee_details
    end
  end
end