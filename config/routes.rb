Rails.application.routes.draw do

  resources :topics, only: [:index, :show]
  devise_for :users, path: '',
              path_names: {sign_in: 'login', sign_out: 'logout' , sign_up: 'register'}
  root to: 'pages#home'

  get "user/:id" => "stockit#profile", as: :profile


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

  mount ActionCable.server => '/cable'

  #get 'download_resume', to: "pages#download_file"
  get 'trading-rules', to: 'pages#trading_rules'
  #get 'market-status', to: 'pages#market_status'
  get 'tech-news', to: 'pages#tech_news'
  get 'privacy' => 'pages#privacyPolicy'
  get 'terms' => 'pages#termsAndConditions'
  get 'stockit' => 'stockit#index'

  resources :markets, except: [:delete]

  #get 'market-status' => 'market#index'
  #post 'market/new' => 'market#update'

  resources :communities do
    resources :posts
  end

  resources :subscriptions
  #resources :scomments, only: [:create]

  resources :scomments, only: [:create], defaults: { format: 'js' }

  post "post/vote" => "votes#create"


end
