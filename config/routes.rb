Teste2::Application.routes.draw do

	match ':evento_id/areas' => 'home#lista_area', :as => 'areas_mobile'
	match ':area_id/categorias' => 'home#lista_categoria', :as => 'categorias_mobile'
	match ':categoria_id/perfis' => 'home#lista_perfil', :as => 'perfis_mobile'
	match ':perfil_id/posts' => 'home#twitter', :as => 'twitter_mobile'
	
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
