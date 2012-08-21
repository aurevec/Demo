class ChangeFactureTable < ActiveRecord::Migration
  def change
     rename_column :factures, :users_id, :user_id
     rename_column :factures, :statuts_id, :statut_id
     rename_column :factures, :types_id, :type_id
     rename_column :factures, :clients_id, :client_id
  end
end
