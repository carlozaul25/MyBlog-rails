Rails.application.routes.draw do
	resources :blogs do 
	resources :comments
end
	root 'blogs#index'

	get '/about', to: "pages#about"
end
