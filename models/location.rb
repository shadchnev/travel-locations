class Location
	include DataMapper::Resource

	property :id, Serial
	property :name, String
	property :location, String
	property :description, Text
	property :wiki_link, String, :required => false

	has n, :photos, :required => false
	has n, :users, :required => false, :through => :fav_locations_users

end