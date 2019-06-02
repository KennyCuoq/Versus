class Package < ApplicationRecord
  validates :title, :description, presence: true
  belongs_to :package_group
end
