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
  get 'home/us'
  get 'home/euro'
  get 'home/asia'
  get 'home/africa'
  get 'home/aus'
  get 'home/latin'
  get 'home/mid'
  get 'home/art'
  get 'home/manage'
  get 'home/medical'
  get 'home/social'
  get 'home/natural'
  get 'home/tech'
  get 'home/brics'
  get 'home/city'
  root 'home#index'
end