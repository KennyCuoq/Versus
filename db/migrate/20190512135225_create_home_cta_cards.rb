class CreateHomeCtaCards < ActiveRecord::Migration[5.2]
  def change
    create_table :home_cta_cards do |t|
      t.string :title
      t.string :link_url

      t.timestamps
    end
  end
end
