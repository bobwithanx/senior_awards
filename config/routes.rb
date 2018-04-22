Rails.application.routes.draw do
  resources :students
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :students do
    get 'popup', on: :member
  end

  root 'students#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
