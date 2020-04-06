Rails.application.routes.draw do
  root to: 'items#index'

  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	get 'items',     to: 'items#index'


  get 'items/:id', to: 'items#show', as: :item

end
