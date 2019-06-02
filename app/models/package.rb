class Package < ApplicationRecord
  validates :title, :description, :order, :package_group_id, presence: true
  belongs_to :package_group
end
