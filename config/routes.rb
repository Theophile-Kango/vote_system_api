Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: "auth", controllers: {
    sessions: "api/sessions",
    registrations: "api/registrations"
  }
  namespace :api do
    resources :date_vote
    resources :candidate
    get 'list_users', to: 'application#users', as: 'users'
  end

end
