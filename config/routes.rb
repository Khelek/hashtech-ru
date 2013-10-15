HashtechRu::Application.routes.draw do

  resources :partners, only: :index
  resources :projects, only: :index

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "welcome#index"

  resources :welcome do
    collection do
      get "about"
      get "contacts"
    end
  end
end
