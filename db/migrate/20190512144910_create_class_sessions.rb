class CreateClassSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :class_sessions do |t|
      t.string :discipline
      t.integer :day
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
