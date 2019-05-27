class Discipline < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, :description, uniqueness: true, presence: true
end
