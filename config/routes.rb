# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # devise_for :users
  # namespace :api, default: { format: :json } do
  #   divise_scope :user do
  #     post 'sign_up', to: 'registrations#create'
  #     post 'sign_in', to: 'sessions#create'
  #   end
  # end
  # namespace :api, default: { format: :json } do
  #   devise_for :users, path: '', path_names: {
  #                                  sign_in: 'login',
  #                                  sign_out: 'logout',
  #                                  registration: 'signup'
  #                                },
  #                      controllers: {
  #                        sessions: 'users/sessions',
  #                        registrations: 'users/registrations'
  #                      }
  # end
  devise_for :users, path: 'users', path_names: {
                                 sign_in: 'login',
                                 sign_out: 'logout',
                                 registration: 'signup'
                               },
                     controllers: {
                       sessions: 'users/sessions',
                       registrations: 'users/registrations'
                     }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ('/')
  root 'users#index'
  resources :users
end
