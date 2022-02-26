class Schedule < ApplicationRecord
  
  # RELATIONS

  belongs_to :user

  # VALIDATIONS

  validates :start_date, presence: true
  validates :end_date, presence: true

  validate :start_date_must_come_before_end_date


  def start_date_must_come_before_end_date
    if start_date != end_date and start_date.after?(end_date)
      errors.add(:start_date, "must come before the end date ")
    end
  end
  
end
