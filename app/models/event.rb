class Event < ActiveRecord::Base
	validates_length_of :description, maximum: 500
	geocoded_by :addre, :latitude  => :lat, :longitude => :long
	after_validation :geocode

	def addre
		add = [self.postal_code, self.city , self.country].join(" ")
		p add
	end
end
