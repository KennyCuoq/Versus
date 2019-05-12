class CreateHomeBanners < ActiveRecord::Migration[5.2]
  def change
    create_table :home_banners do |t|
      t.string :photo_url

      t.timestamps
    end
  end
end
