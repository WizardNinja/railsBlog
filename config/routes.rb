RedditCloneApp::Application.routes.draw do
  root to: "posts#index"

  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'

  resources :users
  resources :sessions

  resources :posts, :comments do
    resources :votes, :comments
  end
end
