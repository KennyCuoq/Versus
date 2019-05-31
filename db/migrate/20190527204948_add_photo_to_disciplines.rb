class AddPhotoToDisciplines < ActiveRecord::Migration[5.2]
  def change
    add_column :disciplines, :photo, :string
  end
end
