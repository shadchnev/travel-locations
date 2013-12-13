class FavLocationsUser
	include DataMapper::Resource

  property :id, Serial

	belongs_to :user
	belongs_to :fav_location, 'Location'

end