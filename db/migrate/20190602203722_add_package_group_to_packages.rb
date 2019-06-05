class AddPackageGroupToPackages < ActiveRecord::Migration[5.2]
  def change
    add_reference :packages, :package_group, foreign_key: true
  end
end
