Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: 'pages#home'
  resources :disciplines, only: [ :show ]
  get 'schedule-and-fees', to: "pages#schedulefees"
  get 'trainers', to: "pages#trainers"
  get 'private-training', to: "pages#private_training"
  get 'about-us', to: "pages#about_us"
  get 'visit-us', to: "pages#visit_us"
  get 'free-trial', to: "pages#free-trial"
  get 'facilities', to: "pages#facilities"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
