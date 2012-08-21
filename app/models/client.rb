class Client < ActiveRecord::Base
  attr_accessible :adresse_pays, :adresse_cp, :adresse_numero, :adresse_rue, :adresse_ville, :mail, :mobile, :societe, :numero_tva, :telephone
  
  has_many :factures
  
  def adresse_complete
    "#{self.adresse_numero} #{self.adresse_rue} #{self.adresse_cp} #{self.adresse_ville} #{self.adresse_pays}"
  end
end
