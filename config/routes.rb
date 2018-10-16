Rails.application.routes.draw do
  #get 'article/index'
  get 'welcome/index', to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :comments
  end
  root 'welcome#index'
  get '/login', to: 'login#index'
  get '/sign', to: 'signin#index'
  #root 'article#index'
end

