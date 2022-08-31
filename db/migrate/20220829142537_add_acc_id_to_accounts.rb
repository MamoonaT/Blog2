class AddAccIdToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :user_id, :integer
    add_index :accounts, :user_id
  end
end
