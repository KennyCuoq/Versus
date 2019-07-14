class Discipline < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  mount_uploader :photo, PhotoUploader
  validates :name, uniqueness: true, presence: true
  validates :photo, presence: true
end
