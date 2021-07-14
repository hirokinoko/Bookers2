Rails.application.routes.draw do
  devise_for :users, controllers: {
    　　registrations: 'users/registrations',
        sessions: 'users/sessions'
      }
  root to: 'homes#top'
  get "/home/about" => "homes#about"
  resources :users

  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end