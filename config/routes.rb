Teste2::Application.routes.draw do

  get "home/lista_categoria"

  get "home/lista_perfil"

  get "home/lista_area"

  get "home/index"

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
