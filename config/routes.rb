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
          delete 'delete_multiple'
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
      resources :recruits
      resources :query_sends
    end
  end
end