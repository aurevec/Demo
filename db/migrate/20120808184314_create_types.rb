class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :libelle
      t.boolean :display

      t.timestamps
    end
  end
end
