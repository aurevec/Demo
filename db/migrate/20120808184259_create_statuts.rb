class CreateStatuts < ActiveRecord::Migration
  def change
    create_table :statuts do |t|
      t.string :libelle
      t.boolean :display

      t.timestamps
    end
  end
end
