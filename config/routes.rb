Rails.application.routes.draw do
  get '/robots.:format' => 'pages#robots'
  post 'uploader/image', to: 'uploader#image'
  root 'home#index'
  localized do
    resources :posts, only: %i[index show new create] do
      resources :comments, only: %i[new create]
    end
    resources :categories, only: %i[index show]
  end

  scope 'office', module: 'office', as: 'admin' do
    get '', to: 'dashboard#index', as: '/'
    resources :posts, except: :show
    resources :categories, except: :show
    resources :sub_categories, except: :show
  end

end
