Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"
# his file, see https://guides.rubyonrails.org/routing.html
end
