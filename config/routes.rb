Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/v1/auth'
  namespace :api do
    namespace :v1 do
      resources :movies, only: [:show]
      resources :watchlist_items, only: [:create], constraints: { format: 'json' }
    end
  end
end