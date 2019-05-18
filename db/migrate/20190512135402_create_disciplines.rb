class CreateDisciplines < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplines do |t|
      t.string :name
      t.string :description
      t.string :photo_url

      t.timestamps
    end
  end
end
