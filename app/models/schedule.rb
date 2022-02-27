class Schedule < ApplicationRecord
  
  # RELATIONS

  belongs_to :user

  # VALIDATIONS

  validates :start_date, presence: true
  validates :end_date, presence: true

  validate :start_date_must_come_before_end_date
  validate :dates_are_free_to_registration


  def start_date_must_come_before_end_date
    if start_date != end_date and start_date.after?(end_date)
      errors.add(:start_date, "must come before the end date ")
    end
  end

  def dates_are_free_to_registration
    
    if Schedule.where('start_date >= :start_date and end_date <= :start_date', {start_date: start_date}).any?
      errors.add(:start_date, "is alread registered")
    end

    if Schedule.where('start_date >= :end_date and end_date <= :end_date', { end_date: end_date}).any?
      errors.add(:end_date, "is alread registered")
    end

  end # dates_are_free_to_registration
  
end
