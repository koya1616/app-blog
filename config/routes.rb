Rails.application.routes.draw do
  root to: 'blogs#index'
  
  get 'comments/index' => "comments#index"
  get "comments/new" => "comments#new"
  get "comments/:id" => "comments#show"
  post "comments/create" => "comments#create"
  post "comments/:id/destroy" => "comments#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogs
end
