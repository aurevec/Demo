class CreateTvas < ActiveRecord::Migration
  def change
    create_table :tvas do |t|
      t.string :libelle
      t.decimal :value
      t.boolean :display

      t.timestamps
    end
  end
end
