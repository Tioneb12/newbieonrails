Rails.application.routes.draw do
  get '/robots.:format' => 'pages#robots'
  root 'home#index'
  localized do
    resources :posts, only: %i[index show new create]
    resources :sub_categories, only: %i[index show]
    resources :categories, only: %i[index show]
  end

  scope 'office', module: 'office', as: 'admin' do
    get '', to: 'dashboard#index', as: '/'
    resources :posts, except: :show
  end

end
