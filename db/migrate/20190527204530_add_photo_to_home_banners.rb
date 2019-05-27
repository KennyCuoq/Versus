class AddPhotoToHomeBanners < ActiveRecord::Migration[5.2]
  def change
    add_column :home_banners, :photo, :string
  end
end
