class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :mail
      t.string :password
      t.string :salt

      t.timestamps
    end
  end
end
