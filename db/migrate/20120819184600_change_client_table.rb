class ChangeClientTable < ActiveRecord::Migration
  def change
     rename_column :clients, :nom, :societe
     remove_column :clients, :prenom
  end
end
