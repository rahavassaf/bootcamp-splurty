Rails.application.routes.draw do
	root 'quotes#index'
	resources :quotes
	get 'about', to: 'quotes#about'
	get 'all', to: 'quotes#all'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
