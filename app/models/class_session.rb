class ClassSession < ApplicationRecord
  validates :discipline, :day, :start_time, :end_time, presence: true
  validates :day, inclusion: { in: [1, 2, 3, 4, 5, 6, 7],
    message: "%{value} is not a valid day. Needs to be one of the following: 1, 2, 3, 4, 5, 6, 7. These stand for Monday, Tuesday, Wednesday, Thursday, Friday, Saturday and Sunday respectively." }

  def day_string
    case day
    when 1
      "Monday"
    when 2
    "Tuesday"
    when 3
    "Wednesday"
    when 4
    "Thursday"
    when 5
    "Friday"
    when 6
    "Saturday"
    when 7
      "Sunday"
    end
  end

  def clean_start_time
    start_time.strftime('%R')
  end

  def clean_end_time
    end_time.strftime('%R')
  end
end
