class ComponenteModelo < ActiveRecord::Base
  attr_accessible :componente_id, :modelo_id
  belongs_to :componente
  belongs_to :modelo
end
