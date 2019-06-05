Rails.application.routes.draw do
  root 'welcome#index'
  resources :moods
  resources :tonus_eqs, only: [:index, :show, :create] do
    resources :moods, except: [:show]
  end
end
