Teste2::Application.routes.draw do

	#devise_for :admins

	resources :perfis

	resources :areas

	resources :eventos

	root :to => "home#index"
end
