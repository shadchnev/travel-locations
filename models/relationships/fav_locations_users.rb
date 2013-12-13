class Fav_Locations_Users
	include DataMapper::Resource

	belongs_to :users
	belongs_to :fav_locations

end