Rails.application.routes.draw do

  root "schedules#index"

  resources :schedules

  devise_for :users


  namespace :api do

      namespace :synchronize do
        post 'schedules', to: '/api/synchronize/schedules#create', as: "create_schedule"
      end

  end

end
