module Services
  module Constraints
    class Auth
      def initialize(request)
        @request = request
      end

      def matches?
        @request.cookie_jar.signed[:current_user].present?
      end
    end
  end
end
