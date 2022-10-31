class Record < ApplicationRecord
  belongs_to :user
  has_many :calenders
  has_many :graphs
  has_many :comment

  validate :name
  validate :value
  validate :record_date
  validate :user
end
