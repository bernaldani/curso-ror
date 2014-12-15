class Proveedor < ActiveRecord::Base
  attr_accessible :nombre
  has_many :componentes
end
