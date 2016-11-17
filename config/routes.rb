Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'blog#index' #== get'/' => 'blog#index'
  get 'blog/create' #== get '/blog/create' => 'blog#create'
  get 'blog/destroy'
  get 'blog/edit'
  get 'blog/update'
  get 'blog/show'
  get 'blog/comment'
  get 'blog/delete_comment'
  #get 으로 받을 수 있는 건 최대 255자. 대량을 받을 때는 post로 받아야


end
