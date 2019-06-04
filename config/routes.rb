Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :disciplines, only: [ :show ]
  get 'schedule-and-fees', to: "pages#schedulefees"
  get 'trainers', to: "pages#trainers"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
