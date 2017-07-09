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


  resources :job_posts
  resources :business_streams
  resources :job_types
  resources :companies
  resources :user_types
  root to: 'homes#index'
end