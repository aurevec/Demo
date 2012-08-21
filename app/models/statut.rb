class Statut < ActiveRecord::Base
  attr_accessible :display, :libelle
  
  has_many :factures
end
