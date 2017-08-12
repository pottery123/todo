class Task < ApplicationRecord
  validate :not_past_date

  def not_past_date
    if self.date.past?
      errors.add(:date, 'not in past')
    end
  end
end
