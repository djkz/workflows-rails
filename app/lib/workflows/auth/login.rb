module Workflows
  module Auth
    class Login < Workflows::Base
      def run
        cookies.signed[:current_user] = 1
        "window.location.reload()".html_safe
      end
    end
  end
end
