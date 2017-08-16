Rails.application.routes.draw do
  root "root#index"
  resources :cron_messages, only: [:index]
end
