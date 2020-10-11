module Domains
  module Auth
    class Login
      attr_accessor :email, :password

      def initialize
        self.email = "test"
        self.password = ""
      end

      def label
        "Login"
      end

      def action
        "Auth::Login"
      end
    end
  end
end
