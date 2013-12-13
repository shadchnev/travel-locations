class Location
	include DataMapper::Resource

	property :id, Serial
	property :name, String
	property :location, String
	property :description, Text
	property :wiki_link, String, :required => false

	has n, :photos
  has n, :fav_locations_users, :child_key => :fav_location
	has n, :users, :through => :fav_locations_users # :through must refer to another "has n" in the same model

end