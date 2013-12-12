require 'spec_helper'

feature "User creates an account" do 

	def sign_up(email = "nicki@example.com",
				password = "oranges!",
				password_confirmation = "oranges!")
		visit "/users/new"
		fill_in :email, :with => email
		fill_in :password, :with => password
		fill_in :password_confirmation, :with => password_confirmation
		click_button "Sign up"
	end

	scenario "and info is stored" do
		lambda{sign_up}.should change(User, :count).by(1)
	end
end