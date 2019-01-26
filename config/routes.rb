Rails.application.routes.draw do
  get 'events/index'
  get 'events/new'
  get 'events/create'
#  get 'events/show'
  get 'events/:id' => 'events#show'
  resources :tickets
  root :to => "tickets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
