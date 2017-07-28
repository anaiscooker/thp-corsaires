Rails.application.routes.draw do
 
 resources :corsairs

	root 'static_pages#home'

end
