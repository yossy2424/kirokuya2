class Calender < ApplicationRecord
  belongs_to :user
  belongs_to :record

  validate :start_time
  validate :user
  validate :record
end
