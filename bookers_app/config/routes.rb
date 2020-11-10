Rails.application.routes.draw do
  
  
  get '/' =>'books#top'
  get '/books' => 'books#index'
  get '/books/show'
  get '/books/new'
  get 'books/edit'
  post '/books'=> 'books#create'
  get '/books/:id'=>'books#show'
  get '/books/:id/edit'=>'books#edit'
  patch 'books/:id'=>'books#update'
  delete 'books/:id'=>'books#destroy'
  
  
  # resources :books
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
