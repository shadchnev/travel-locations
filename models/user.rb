require 'bcrypt'
	
class User
	include DataMapper::Resource

	attr_reader :password
	attr_accessor :password_confirmation
	validates_confirmation_of :password, message: "Sorry, your passwords don't match"
	validates_uniqueness_of :email, message: "This email is already taken"

	has n, :fav_locations_users # this makes :through => :fav_locations_users work
	has n, :favlocations, "Location", :through => :fav_locations_users, :via => :fav_location

	property :id,  Serial
	property :name, String
	property :email, String
	property :password_digest, Text

	def password=(password)
		@password = password
		self.password_digest = BCrypt::Password.create(password)
	end

	def self.authenticate(email,password)
		user = User.first(email: email)
		user && BCrypt::Password.new(user.password_digest) == password ? user : nil
	end

end