Rails.application.routes.draw do
  root  'static_pages#home'
  resources :drinks, only: [:new, :show, :index, :edit, :update, :destroy]
  resources :posts, only: [:new, :show, :edit, :update, :destroy]
  resources :users, only: [:new, :create, :destroy]
  get     'program'         => 'posts#index'
  get     'novinky'         => 'static_pages#novinky'
  get     'o_daiquiri'      => 'static_pages#o_daiquiri'
  get     'kontakt'         => 'static_pages#kontakt'
  get     'galerie'         => 'static_pages#galerie'
  get     'napojovy_listek' => 'static_pages#napojovy_listek'
  get     'provozni_rad'    => 'static_pages#provozni_rad'
  get     'o_baru_daiquir'  => 'static_pages#o_baru_daiquiri'
  get     'login'           => 'sessions#new'
  post    'login'           => 'sessions#create'
  get     'administrace'    => 'drinks#index'
  post    'drinks'          => 'drinks#edit_redirect'
  delete  'logout'          => 'sessions#destroy'
  post    'posts'           => 'drinks#edit_redirect'
  get    'post_create'     => 'posts#create'

end
