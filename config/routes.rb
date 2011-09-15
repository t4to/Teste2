Teste2::Application.routes.draw do

	resources :perfis

	resources :categorias

	resources :areas

	resources :eventos
	
	devise_for :admin,
			:path => '/',
			:path_names => {
				:sign_in  => 'entrar',
				:sign_out => 'sair',
				:sign_up => 'registrar'}

	root :to => "home#index"
	
end
