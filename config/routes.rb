Rails.application.routes.draw do
  get '/' => 'homes#top'
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show'
  get 'books/:id/edit' => 'books#edit'
  patch 'books/:id' => 'books#update'
  delete'books/:id' => 'books#destroy'
  get 'books/new' => 'books#new'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
