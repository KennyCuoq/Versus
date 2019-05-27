class AddPhotoToHomeCtaCards < ActiveRecord::Migration[5.2]
  def change
    add_column :home_cta_cards, :photo, :string
  end
end
