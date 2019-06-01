Rails.application.routes.draw do
  Rails.application.routes.draw do
  resources :moods
  resources :tonus_eqs, only: [:index, :show] do
    resources :moods, except: [:show]
  end
end
end
