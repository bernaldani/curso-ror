class Modelo < ActiveRecord::Base
  attr_accessible :codigo, :fecha_lanzamiento, :nombre, :serie_id, :sistema_operativo_id
  belongs_to :serie
  belongs_to :sistema_operativo
  has_many :componentes_modelos
  has_many :componentes, through: :componentes_modelos
  has_and_belongs_to_many :capacidades
end
