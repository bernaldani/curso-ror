class Serie < ActiveRecord::Base
  attr_accessible :nombre
  has_many :modelos
end
