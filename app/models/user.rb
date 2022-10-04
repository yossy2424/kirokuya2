class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :records
  has_one :calender
  has_one :graph

  validate :nickname
  validate :height
  validate :weight
  validate :sex
  validate :target_weight

end
