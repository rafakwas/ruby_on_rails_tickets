Rails.application.routes.draw do
  devise_for :users
  resources :events, :only => [:index, :new, :create, :show]
#  get 'events/index'
#  get 'events/new'
#  get 'events/create'
#  post '/events' => 'events#create'
#  get 'events/show'
#  get 'events/:id' => 'events#show'
  resources :tickets
  #root :to => "tickets#index"
  root :to => "static#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
