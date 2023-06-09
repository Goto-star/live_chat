Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controller: {
    registrations: 'auth/registrations'
  }

  resources :messages, only: ['index']
end
