class CreateProduits < ActiveRecord::Migration
  def change
    create_table :produits do |t|
      t.string :reference
      t.string :nom
      t.integer :quantite

      t.timestamps
    end
    
    change_table :facture_items do |t|
      t.references :produits
    end
  end
end
