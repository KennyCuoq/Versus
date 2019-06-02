class PackageGroup < ApplicationRecord
  validates :name, :order, presence: true
  has_many :packages, dependent: :destroy
end
