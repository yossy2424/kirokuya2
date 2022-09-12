class Record < ApplicationRecord
  belong_to :user
  has_one :comments

  validates :weight
  validates :bady_fat_percentage
  validates :record_month
  validates :record_date
  validates :user
end
