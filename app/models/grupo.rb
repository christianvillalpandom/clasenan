class Grupo < ActiveRecord::Base
	has_many :alumnos
	has_and_belongs_to_many :profesors
end
