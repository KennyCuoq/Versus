class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :specialty
      t.string :description

      t.timestamps
    end
  end
end
