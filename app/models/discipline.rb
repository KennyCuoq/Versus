class Discipline < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, uniqueness: true, presence: true
  validates :photo, presence: true
end
