class Evento < ActiveRecord::Base
	has_many :areas, :dependent => :destroy
end
