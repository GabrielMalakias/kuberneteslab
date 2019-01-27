require 'net/http'

module App
  module Client
    class ElixirApp
      def get
        Net::HTTP.get(uri)
      rescue StandardError => e
        [ e.message, e.backtrace.inspect ]
      end

      def uri
        URI("http://#{hostname}:#{port}")
      end

      def hostname
        ENV['ELIXIRAPPSERVICE_SERVICE_HOST']
      end

      def port
        ENV['ELIXIRAPPSERVICE_SERVICE_PORT']
      end
    end
  end
end
