module Escher
  module RackMiddleware
    module Logging

      require 'escher/rack_middleware/logging/helper'

      def self.extended(klass)
        klass.__send__(:include,Helper)
      end

      def logger=(logger)
        @logger=logger
      end

      def logger
        @logger ||= -> {
          require 'logger'
          Logger.new(STDOUT)
        }.call
      end

    end
  end
end
