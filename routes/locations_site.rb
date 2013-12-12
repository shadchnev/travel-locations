require_relative '../lib/location'

class LocationSite < Sinatra::Application
	def define_location(value_array)
		location = Location.new(value_array[1])
		location.location = value_array[0]
		location.description = value_array[2]
		location.photos = value_array[3]
		location
	end

	def get_locations(file)
		file = File.new(file,"r")
		file.each_line.inject([]) {|array, line| array << define_location(line.split(":"))}
	end

	get '/' do 
		@locations = get_locations('/Users/Nicki/Projects/travel-locations/public/locations_file.txt')
		@current_location = @locations.select{|location| location.name == "Ancient Region of Anatolia"}.first
		erb :index
	end
end