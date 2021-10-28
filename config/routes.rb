Rails.application.routes.draw do
  root :to => "api/sessions#create"
  mount_devise_token_auth_for 'User', at: "auth", controllers: {
    sessions: "api/sessions",
    registrations: "api/registrations"
  }
  namespace :api do
    resources :date_vote
    resources :candidate
    resources :vote
    get 'list_users', to: 'candidate#users', as: 'users'
    #delete 'user/:id', to: 'registrations#destroy', as: 'delete_user'
  end

end
