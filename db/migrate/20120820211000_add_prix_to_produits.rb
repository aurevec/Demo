class AddPrixToProduits < ActiveRecord::Migration
  def change
    add_column :produits, :prix, :decimal
  end
end
