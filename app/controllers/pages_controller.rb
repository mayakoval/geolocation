class PagesController < ApplicationController
  def home
  	@doctors = Doctor.all

		@markers = @doctors.geocoded.map do |doctor|
    {
      lat: flat.latitude,
      lng: flat.longitude
    }
    end
  end
end
