class Doctor < ApplicationRecord
	has_many :appointments, dependent: :destroy

	validates :forename, :surname, :specialty, :address, :description, presence: true
	geocoded_by :address
	after_validation :geocode, if: :will_save_change_to_address?
end
