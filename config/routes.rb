Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  resources :disciplines, only: [ :show ]
  get 'schedule-and-fees', to: "pages#schedulefees"
  get 'trainers', to: "pages#trainers"
  get 'private-training', to: "pages#private_training"
  get 'about-us', to: "pages#about_us"
  get 'visit-us', to: "pages#visit_us"
  get 'free-trial', to: "pages#free-trial"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
