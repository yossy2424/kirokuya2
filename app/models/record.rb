class Record < ApplicationRecord
  belongs_to :user
  has_one :comments
  has_many :calender

  validate :weight
  validate :body_fat_percentage
  validate :record_date
  validate :user
end
