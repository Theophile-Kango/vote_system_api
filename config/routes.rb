Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: "auth", controllers: {
    sessions: "api/sessions",
    registrations: "api/registrations"
  }
  # namespace :api do
  #   resources :articles, only: [:index]
  # end
end
