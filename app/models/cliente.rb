class Cliente < ActiveRecord::Base
  attr_accessible :apellido, :nombre, :usuario_id
  belongs_to :usuario
end
