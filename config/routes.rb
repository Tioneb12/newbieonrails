Rails.application.routes.draw do
  root 'home#index'
  localized do 
    resources :posts, only: %i[index show]
    resources :sub_categories, only: %i[index show]
    resources :categories, only: %i[index show]
  end
end
