class Componente < ActiveRecord::Base
  attr_accessible :descripcion, :proveedor_id
  has_many :componentes_modelos
  has_many :modelos, through: :componentes_modelos
  belongs_to :proveedor
end
