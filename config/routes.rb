Rails.application.routes.draw do
  resources :chatrooms
  devise_for :users, path_prefix: 'auth', controllers: {sessions: 'users/sessions',
                                                        passwords: 'users/passwords',
                                                        unlocks: 'users/unlocks',
                                                        registrations: 'users/registrations'}

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  root 'chatrooms#index'

end
