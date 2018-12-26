Rails.application.routes.draw do

  devise_for :users, path: '',
              path_names: {sign_in: 'login', sign_out: 'logout' , sign_up: 'register'}
  root to: 'pages#home'

  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'rails-items', to: 'portfolios#rails'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'

end
