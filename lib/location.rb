class LocalLocation

	attr_accessor :name, :location, :photos, :description, :coordinates, :wiki_link

	def initialize(name)
		@name = name
		@photos = []
	end

end