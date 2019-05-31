class ClassSession < ApplicationRecord
  validates :discipline, :day, :start_time, :end_time, presence: true
  validates :day, inclusion: { in: %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday),
    message: "%{value} is not a valid day. Needs to be one of the following: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday. Don't forget the capital!" }
end
