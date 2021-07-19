Rails.application.routes.draw do
  get "welcome/index"
  root to: "notes#index"

  resources :notes, except: %i[new show edit]
end
