class CreateFactures < ActiveRecord::Migration
  def change
    create_table :factures do |t|
      t.string :reference
      t.string :intitule
      t.date :date_facturation
      t.integer :delai_paiement

      t.timestamps
    end
  end
end
