module Workflows
  module Auth
    class Logout < Workflows::Base
      def run
        cookies.delete :current_user

        "window.location.href = '/'".html_safe
      end
    end
  end
end
