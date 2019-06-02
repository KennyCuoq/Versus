class Package < ApplicationRecord
  validates :title, :description, presence: true
  validates :package_group_id, presence: true
  belongs_to :package_group
end
