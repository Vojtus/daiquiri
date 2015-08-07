Rails.application.routes.draw do
  root  'static_pages#home'
  get   'program'         => 'static_pages#program'
  get   'novinky'         => 'static_pages#novinky'
  get   'o_daiquiri'      => 'static_pages#o_daiquiri'
  get   'kontakt'         => 'static_pages#kontakt'
  get   'galerie'         => 'static_pages#galerie'
  get   'napojovy_listek' => 'static_pages#napojovy_listek'
  get   'provozni_rad'    => 'static_pages#provozni_rad'
  get   'o_baru_daiquiri' => 'static_pages#o_baru_daiquiri'
  get   'login'           => 'sessions#new'
  post  'login'           => 'sessions#create'
  get   'administrace'    => 'drinks#index'
  post  'drinks'          => 'drinks#edit_redirect'
  delete 'logout'         => 'sessions#destroy'
  resources :drinks, only: [:new, :show, :index, :edit]
end
