class Appointment < ApplicationRecord
  belongs_to :doctor

   validates :date, :time, :user_name, presence: true
   validates :email, presence: true, format: { with: /\A.*@.*\.com\z/ }
end