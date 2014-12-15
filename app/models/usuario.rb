class Usuario < ActiveRecord::Base
  attr_accessible :login, :password
  has_one :cliente
end
