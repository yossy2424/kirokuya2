class Record < ApplicationRecord
  belongs_to :user
  has_many :calenders

  validate :weight
  validate :body_fat_percentage
  validate :record_date
  validate :user
end
