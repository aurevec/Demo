class ChangeNameColumnPassword < ActiveRecord::Migration
    def change
     change_table :factures do |t|
       rename_column :users, :password, :hashed_password
     end
   end
end
