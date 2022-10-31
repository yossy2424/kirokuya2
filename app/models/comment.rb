class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :record

  validate :user
  validate :record
end
