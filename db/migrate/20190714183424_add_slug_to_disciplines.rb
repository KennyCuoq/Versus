class AddSlugToDisciplines < ActiveRecord::Migration[5.2]
  def change
    add_column :disciplines, :slug, :string
    add_index :disciplines, :slug, unique: true
  end
end
