Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'index#index'
  get '/list', to: 'index#toList'
  get '/new', to: 'index#newBlog'
  get '/blog/:id', to:'view_blog#view'
  post '/saveBlog', to: 'view_blog#save'
  post '/edit', to: 'view_blog#edit'
  post '/saveComment', to: 'view_blog#saveComment'
end
