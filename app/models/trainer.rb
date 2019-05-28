class Trainer < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, :specialty, :description, :photo, presence: true
end
