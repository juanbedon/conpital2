Rails.application.routes.draw do

  resources :dashboard, only: [:index]
  resources :expenses

  root 'dashboard#index'

  devise_for :users

  namespace :api, defaults: { format: :json }, path: '/api' do
    namespace :v1 do
      resources :expenses, except: [:show, :edit, :new]
    end
  end

end