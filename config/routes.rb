Rails.application.routes.draw do
  resources :skill_sets
  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
  }


  resource :users do
    get 'profile'
    member do
      put 'update_profile'
    end
  end

  resources :homes
  resources :job_posts do
    member do
      post 'apply'
    end
  end
  resources :business_streams
  resources :job_types
  resources :companies
  resources :user_types
  root to: 'job_posts#index'
end