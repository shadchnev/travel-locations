class Location

	attr_accessor :name, :photos, :description, :coordinates, :wiki_link

	def initialize(name)
		@name = name
		@photos = []
	end

end