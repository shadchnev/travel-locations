class LocationSite < Sinatra::Application
	get '/location' do
		@locations = get_locations('/Users/Nicki/Projects/travel-locations/public/locations_file.txt')
		@current_location = @locations.select{|location| location.name == params[:name]}.first
		erb :detail
	end
end