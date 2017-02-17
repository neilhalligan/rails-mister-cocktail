Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  root to: "cocktails#index"

  resources :cocktails do
    resources :doses, only: [:new, :create, :index, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
