# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :messages do
    resources :comments
  end
  root 'messages#index'
end
