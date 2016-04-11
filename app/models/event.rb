class Event < ActiveRecord::Base
	validates_length_of :description, maximum: 500
end
