module Workflows
  module Auth
    class Login
      def initialize(params, cookies)
        cookies.signed[:current_user] = 1
      end

      def run
        "window.location.reload()".html_safe
      end
    end
  end
end
