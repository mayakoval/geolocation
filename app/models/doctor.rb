class Doctor < ApplicationRecord
	has_many :appointments, dependent: :destroy

	validates :forename, :surname, :specialty, :address, :description, presence: true
end
