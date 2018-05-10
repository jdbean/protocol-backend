Rails.application.routes.draw do
  resources :messages
  resources :channels
  # post 'user_token' => 'user_token#create'
  mount ActionCable.server, at: '/cable'

  namespace :api do
    namespace :v1 do
      resources :users, except: [:index]
    end
  end
    post 'translate', to: 'translation#translate'
   post 'authenticate', to: 'authentication#authenticate'
   get 'channels/:id', to: 'channels#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
