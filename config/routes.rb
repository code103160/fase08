Rails.application.routes.draw do
  # devise_for :users
  namespace :api, defaults: { format: :json } do
    namespace :v1, path: "/" do
      devise_for :user, controllers: { sessions: "api/v1/sessions" }
      resources :users
      resources :gais
    end
  end
end
