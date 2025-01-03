# frozen_string_literal: true

Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check

  namespace :api do
    scope '/status' do
      get '/am-i-up', to: 'status#status'
    end
  end

  match '*path', via: :all, to: 'application#error404'
end
