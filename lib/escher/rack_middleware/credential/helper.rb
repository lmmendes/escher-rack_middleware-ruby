module Escher
  module RackMiddleware
    module Credential
      module Helper

        def credentials
          self.class.credentials
        end

      end
    end
  end
end
