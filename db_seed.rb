require './application'

file = File.new("./public/locations_file.txt","r")

require './models/user'
require './models/location'
require './models/photo'

file.each do |line| 
	location, name, description, image =  line.split(':')
	destination = Location.new(location: location,
				 			   name: name,
				 			   description: description)

	puts destination.inspect
	photo = Photo.create(:path => image)
	destination.photos << photo
  destination.save!
end

