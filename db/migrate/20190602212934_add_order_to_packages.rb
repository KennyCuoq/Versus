class AddOrderToPackages < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :order, :integer
  end
end
