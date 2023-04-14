class GeocodeService

  def self.get_latlong(street_number, street_address, city, state)
    response = conn.get("&address=#{street_number}%20#{street_address}%20#{city}%20#{state}")
  end
  
  def self.conn
    Faraday.new("https://maps.googleapis.com/maps/api/geocode/json?key=#{ENV['GOOGLE_KEY']}")
  end
end