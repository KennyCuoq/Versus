class HomeCtaCard < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :photo, :title, :link_url, presence: true
end
