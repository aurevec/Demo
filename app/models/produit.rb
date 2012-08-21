class Produit < ActiveRecord::Base
  attr_accessible :nom, :quantite, :reference, :prix
  
  has_many :facture_items
  has_many :factures, :through => :facture_items
end
