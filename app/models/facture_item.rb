class FactureItem < ActiveRecord::Base
  attr_accessible :descritpion, :libelle, :prix, :quantite, :tva_id, :produit_id
  
  belongs_to :facture
  belongs_to :produit
  belongs_to :tva
  
  def total_htva
    prix * quantite
  end
  
  def total_tva
    tva_value = Tva.find(tva_id)
    tva_taux = 1.0 + (tva_value.value.to_f / 100)
    total_htva * tva_taux
  end
end
