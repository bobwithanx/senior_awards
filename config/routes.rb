Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :students do
    get 'popup', on: :member
    get 'queued_popup', on: :member
    get 'queue', on: :collection

    member { post 'enqueue' }
    member { post 'dequeue' }
  end

  root 'students#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
