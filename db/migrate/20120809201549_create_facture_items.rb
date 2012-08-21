class CreateFactureItems < ActiveRecord::Migration
  def change
    create_table :facture_items do |t|
      t.string :libelle
      t.integer :quantite
      t.decimal :prix
      t.text :descritpion

      t.timestamps
    end
  end
end
