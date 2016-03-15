module Escher
  module RackMiddleware
    module IncludePath
      module Helper

        def included_paths
          @included_paths ||= self.class.included_paths.dup
        end

        def included_path?(path)
          included_paths.any? do |matcher|
            if matcher.is_a?(Regexp)
              !!(path =~ matcher)
            else
              path == matcher.to_s
            end
          end
        end

      end
    end
  end
end
