class Booking < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :catering
	belongs_to :user
end
