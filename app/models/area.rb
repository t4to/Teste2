class Area < ActiveRecord::Base
	belongs_to :evento, :foreign_key => 'evento_id'
	
	has_many :categorias, :dependent => :destroy
end
