Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'blog/post'

  post 'blog', to: 'blog#create', as: 'blog_create'

  delete 'blog/:id', to: 'blog#destroy', as: 'blog_destroy'

  get 'home/index'
  get 'home/locate'
  get 'home/course'
  get 'home/rank'
  get 'home/locate_detail'
  get 'home/course_detail'
  get 'home/rank_detail'
  root 'home#index'

end