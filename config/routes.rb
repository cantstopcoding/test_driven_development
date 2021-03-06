# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'todos#index'

  resources :todos, only: %i[index new create] do
    resource :completion, only: %i[create destroy]
  end

  resource :session, only: %i[new create]
end
