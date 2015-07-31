Rails.application.routes.draw do
  root  'static_pages#home'
  get   'program' => 'static_pages#program'
  get   'novinky' => 'static_pages#novinky'
end
