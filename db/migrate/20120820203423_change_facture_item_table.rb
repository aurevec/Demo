class ChangeFactureItemTable < ActiveRecord::Migration
  def change
     rename_column :facture_items, :factures_id, :facture_id
     rename_column :facture_items, :tvas_id, :tva_id
     rename_column :facture_items, :produits_id, :produit_id
  end
end
