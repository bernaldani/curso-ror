class Capacidad < ActiveRecord::Base
  attr_accessible :descripcion, :numero
  has_and_belongs_to_many :modelos
end
