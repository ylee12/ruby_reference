

class Location 

  R = 3_959 # Earth's radius in miles, approx

  attr_accessor :latitude, :longitude


  #def initialize(latitude, longitude)
  #  @latitude, @longitude = latitude, longitude
  #end

  def initialize(a = {})
    self.latitude, self.longitude = a[:latitude], a[:longitude]
  end




  
  def near?(lat, long, mile_radius)

    to_radians = Proc.new { |d| d * Math::PI / 180 }
    dist_lat = to_radians.call(lat - self.latitude)
    dist_long = to_radians.call(long - self.longitude)

    lat1 = to_radians.call(self.latitude)
    lat2 = to_radians.call(lat)

    a = Math.sin(dist_lat/2) * Math.sin(dist_lat/2) +
    Math.sin(dist_long/2) * Math.sin(dist_long/2) *
    Math.cos(lat1) * Math.cos(lat2)

    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))

    (R * c) <= mile_radius
  end


  def simple_near?(lat, long, mile_radius)

    #check for negative value
    raise ArgumentError if mile_radius < 0

    loc = Location.new(latitude: lat, longitude: long)

    R * haversine_distance(loc) <= mile_radius

  end





  private

    def to_radians(degrees)
      degrees * Math::PI / 180
    end
    
    def haversine_distance(loc)
      dist_lat = to_radians(loc.latitude - self.latitude)
      dist_long = to_radians(loc.longitude - self.longitude)

      lat1 = to_radians(self.latitude)
      lat2 = to_radians(loc.latitude)

      a = Math.sin(dist_lat/2) * Math.sin(dist_lat/2) +Math.sin(dist_long/2) * Math.sin(dist_long/2) *Math.cos(lat1) * Math.cos(lat2)

      2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))
    end


end