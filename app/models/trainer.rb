class Trainer < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, :specialty, :achievement, :description, :photo, presence: true
end
