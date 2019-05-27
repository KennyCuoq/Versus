class AddPhotoToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :photo, :string
  end
end
