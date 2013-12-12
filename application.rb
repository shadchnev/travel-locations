require "sinatra"
require "data_mapper"

require_relative "routes/locations_site"
require_relative "routes/location_page"
require_relative 'routes/users'
require_relative 'routes/sessions'


env = ENV["RACK_ENV"] || "development"

DataMapper.setup(:default, "sqlite:#{Dir.pwd}/data/travel_location_#{env}")

require './models/user'
require './models/location'

DataMapper.finalize
DataMapper.auto_upgrade!


class LocationSite < Sinatra::Application
	enable :sessions

end
