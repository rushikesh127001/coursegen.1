Rails.application.routes.draw do
  
  namespace :course do
      get 'steps/show'
  end

  namespace :course do
      get 'steps/update'
  end
  
  root "welocme#about"
  get 'raksha',to: 'rakshakn#display'
  get 'login',to: 'session#new'
  post 'login',to: 'session#create'
  delete 'logout', to: 'session#destroy'
  
  resources :course, only: [:new, :create, :show, :index] do
    resources :steps, only: [:show, :update], controller: 'course/steps'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
