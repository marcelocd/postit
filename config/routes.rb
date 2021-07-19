Rails.application.routes.draw do
  get "welcome/index"
  root to: "notes#index"

  namespace :api do
    namespace :v1 do
      resources :notes, only: %i[index create show destroy]
    end
  end

  resources :notes, except: :show
end
