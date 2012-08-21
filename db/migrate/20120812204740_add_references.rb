class AddReferences < ActiveRecord::Migration
  def change
    change_table :factures do |t|
      t.references :users
      t.references :clients
      t.references :types
      t.references :statuts
    end
    
    change_table :facture_items do |t|
      t.references :factures
      t.references :tvas
    end
  end
end
