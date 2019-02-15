module ExternalAPI
  class Geo
    def geocoder(address)
      request('/ws/geocoder/v1/', params: { address: address })
    end

    def geocoder_by_location(location)
      request('/ws/geocoder/v1/', params: { location: location })
    end

    # 计算多个坐标点的步行距离
    def get_walking_distance(from, to)
      request('/ws/distance/v1/', params: { mode: 'walking', from: from, to: to })
    end

    private

    def request(path, options = {})
      uri = Addressable::URI.new(scheme: 'https', host: 'apis.map.qq.com', path: path)
      options = options.with_indifferent_access

      options[:params] ||= {}
      options[:params][:key] = 'DUYBZ-6DCWF-PJWJZ-JVUEL-PMNI5-35FQM'

      begin
        response = HTTP.request(:get, uri, options)
      rescue HTTP::Error => ex
        raise ex.message
      end

      result = ActiveSupport::JSON.decode(response.body.to_s).with_indifferent_access
      raise format('[%s]: %s', result[:status], result[:message]) unless result[:status].zero?

      result[:result]
    end
  end
end
