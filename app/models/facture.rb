class Facture < ActiveRecord::Base
  attr_accessible :date_facturation, :delai_paiement, :intitule, :reference, :statut_id, :type_id, :client_id, :user_id
  
  belongs_to :user
  belongs_to :client
  belongs_to :type
  belongs_to :statut
  
  has_many :facture_items
  has_many :produits, :through => :facture_items
  
  def total_htva
    facture_items.to_a.sum { |facture_item| facture_item.total_htva }
  end
  
  def total_tva
    facture_items.to_a.sum { |facture_item| facture_item.total_tva }
  end
  
  def produits_list
    produits.map { |p| p.nom }.join(", ")
  end
end
