Rails.application.routes.draw do
  root  'static_pages#home'
  get   'program'     => 'static_pages#program'
  get   'novinky'     => 'static_pages#novinky'
  get   'o_daiquiri'  => 'static_pages#o_daiquiri'
  get   'kontakt'     => 'static_pages#kontakt'
end
