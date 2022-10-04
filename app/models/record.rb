class Record < ApplicationRecord
  belongs_to :user
  has_many :calenders
  has_many :graphs

  validate :weight
  validate :body_fat_percentage
  validate :record_date
  validate :user
end
