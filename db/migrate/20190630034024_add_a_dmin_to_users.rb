class AddADminToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :boolean
  end
end
