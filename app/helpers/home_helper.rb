module HomeHelper

	def index
		@evento = Evento.find_by_id(:evento_id)
	end
end
