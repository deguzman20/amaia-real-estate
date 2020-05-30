# RouteSet
Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions"
  }
  root "pages#home"
  get "/check_credential", to: "pages#credential"
  get "/about", to: "pages#about_us"
  get "/promos", to: "pages#promos"
  get "/ready_for_occupancy", to: "pages#ready_for_occupancy"
  get "/pre_selling", to: "pages#pre_selling"
  get "/unit/:id", to: "pages#unit", as: :unit
  get "/sellers", to: "sellers#index"

  resources :contact, only: [:new]
  get "/contact", to: "contact#create"

  mount RailsAdmin::Engine => "/admin", as: "rails_admin"

  # get "*unmatched_route", to: "application#raise_not_found"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
