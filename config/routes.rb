HashtechRu::Application.routes.draw do

  resources :partners, only: :index
  resources :projects, only: :index

  root to: "welcome#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :welcome do
    collection do
      get "about"
      get "contacts"
    end
  end
end
