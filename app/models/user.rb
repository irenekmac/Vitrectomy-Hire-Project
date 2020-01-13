class User < ApplicationRecord
  has_secure_password

  enum user_type: [:patient, :technician, :admin]

  enum state: [:nsw, :vic, :qld]

  # enum time_of_posturing: [:3_5days, :1_week, :10_days, :1_week, :2_weeks, :3_weeks ]

  validates :email, presence: true, uniqueness: true

  validates :name, presence: true
end
