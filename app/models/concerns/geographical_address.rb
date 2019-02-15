module GeographicalAddress
  extend ActiveSupport::Concern

  class_methods do
    def address_methods(*methods)
      methods.each do |address_method|
        define_method("setup_geographical_for_#{address_method}") do
          begin
            r = {}
            r = ExternalAPI.geo.geocoder(self[address_method])
          rescue => ex
            logger.error ex
          end

          # self["#{address_method}_latitude"] = r.dig('location', 'lat')
          # self["#{address_method}_longitude"] = r.dig('location', 'lng')
          # self["#{address_method}_raw"] = r
          self["latitude"] = r.dig('location', 'lat')
          self["longitude"] = r.dig('location', 'lng')
          self["district"] = r.dig('address_components', 'district')
        end

        before_save :"setup_geographical_for_#{address_method}", if: -> { attribute_changed?(address_method) }
      end
    end
  end
end
