Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :disciplines, only: [ :show ]
  get 'schedule-and-fees', to: "pages#schedulefees"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
