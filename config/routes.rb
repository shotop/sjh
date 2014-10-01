Sjh::Application.routes.draw do
  root 'welcome#index'

  get 'about' => 'about#index'
  get 'translations' => 'translations#index'
  get 'music' => 'music#index'
  get 'projects' => 'projects#index'
  get 'blog' => 'blog/posts#index'

  get 'tags/:tag', to: 'blog/posts#index', as: :categories

  resources "contacts", only: [:create]

  namespace :blog do
    resources :posts do
      resources :comments
    end
  end
end
