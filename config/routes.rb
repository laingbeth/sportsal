Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/about'

  root to: 'static_pages#index'
  #root to: 'visitors#index'
end
