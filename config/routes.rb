Rails.application.routes.draw do
  resources :fruits do
    collection do
      get :new2
    end
  end
  resources :landings

  root to: 'landings#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
