class AddOrderToPackageGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :package_groups, :order, :integer
  end
end
