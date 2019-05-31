class Package < ApplicationRecord
  validates :title, :description, presence: true
end
