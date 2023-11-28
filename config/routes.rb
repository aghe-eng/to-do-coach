Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tasks do
    collection do
      get :todays_tasks, as: 'todays'
    end
  end
end
