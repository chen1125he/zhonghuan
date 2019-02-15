module ExternalAPI
  def self.geo
    @geo ||= Geo.new
  end
end
