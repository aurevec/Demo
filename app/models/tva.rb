class Tva < ActiveRecord::Base
  attr_accessible :display, :libelle, :value
  
  has_many :facture_item
end
