Rails.application.routes.draw do

  root to: 'blog/posts#index'

  namespace :author do
    resources :posts
  end

  scope module: 'blog' do
    get 'about' => 'pages#about'
    get 'contact' => 'pages#contact'
    get 'posts' => 'posts#index', as: :posts
    get 'posts/:id' => 'posts#show', as: :post
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
