Rails.application.routes.draw do
  get '/' => 'homes#top'
  post 'books/create' => 'books#create'

  get 'books/new' => 'books#new'
  get 'books/index' => 'books#index'
  get 'books/show' => 'books#show'
  get 'books/edit' => 'books#edit'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
