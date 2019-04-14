Rails.application.routes.draw do
  root 'session#index'

  get    '/login',   to: 'session#index'
  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#destroy'

end
