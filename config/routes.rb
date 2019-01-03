Rails.application.routes.draw do
  resources :pins

  root 'pins#new'
end
