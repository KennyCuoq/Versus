class AddAchievementToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :achievement, :string
  end
end
