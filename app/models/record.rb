class Record < ApplicationRecord
  belongs_to :user
  has_one :comments

  validate :weight
  validate :body_fat_percentage
  validate :record_date
  validate :user
end
