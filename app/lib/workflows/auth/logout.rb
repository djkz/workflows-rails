module Workflows
  module Auth
    class Logout
      def initialize(params, cookies)
        cookies.delete :current_user
      end

      def run
        "window.location.reload()".html_safe
      end
    end
  end
end
