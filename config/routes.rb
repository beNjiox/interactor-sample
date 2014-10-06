Rails.application.routes.draw do
  root to: 'comments#index'

  post '/comments', to: 'comments#store'
end
