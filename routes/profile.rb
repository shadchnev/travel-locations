class LocationSite < Sinatra::Application

	get '/profile' do 
		if session[:user_id]
			@user = User.first(:id => session[:user_id])
		end
		erb :profile
	end

end