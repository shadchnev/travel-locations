require_relative '../routes/locations_site'

describe 'locations_site' do 
	let(:file) {"public/locations_file.txt"}

	it "should return an array from get_locations" do
		expect(get_locations(file)).to be_true
	end
end