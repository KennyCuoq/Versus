class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :title
      t.float :price
      t.string :description

      t.timestamps
    end
  end
end
