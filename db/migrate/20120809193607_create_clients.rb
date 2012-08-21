class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nom
      t.string :prenom
      t.integer :adresse_numero
      t.string :adresse_rue
      t.integer :adresse_cp
      t.string :adresse_ville
      t.string :adresse_pays
      t.string :numero_tva
      t.integer :telephone
      t.integer :mobile
      t.string :mail

      t.timestamps
    end
  end
end
