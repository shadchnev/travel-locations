require_relative '../lib/location'

class LocationSite < Sinatra::Application

	get '/' do 
		@locations = get_locations('/Users/Nicki/Projects/travel-locations/public/locations_file.txt')
		@current_location = @locations.select{|location| location.name == "Ancient Region of Anatolia"}.first
		erb :index
	end
end