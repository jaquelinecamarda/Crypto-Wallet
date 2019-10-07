Rails.application.routes.draw do
  get 'welcome/index'
  resources :coins
  #get "/inicio", to:'welcome#index'

  root to: 'welcome#index' #rota padrão
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
