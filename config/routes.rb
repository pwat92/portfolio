Rails.application.routes.draw do
  root 'static#index'

  get '/about_and_contact', to: 'static#about_and_contact'
  get '/portfolio', to: 'jobs#index'
end
