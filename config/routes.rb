Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'index#index'
  get '/list', to: 'index#toList'
  get '/new', to: 'index#newBlog'
  get '/blog/:id', to:'view_blog#demo'
end
