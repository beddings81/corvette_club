require 'rails_helper'

RSpec.describe GeocodeService do
  describe '#get_lat_long' do
    it 'returns the lat and long from a passed in address' do
      city = GeocodeService.get_latlong("1405", "riverwatch court", "murfreesboro", "TN")

      expect(city).to have_key(:results)
      expect(city[:results].to be_a(Array))
    end
  end
end