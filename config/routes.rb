Rails.application.routes.draw do
  get 'books/new' => 'books#new'
  post 'books' => 'books#create'
  get 'books/show' => 'books#show'
  get 'books/edit'
  get root to: 'homes#top'
  get '/books' => 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
