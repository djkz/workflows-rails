module Workflows
  module Store
    class Refund < Base
      def run
        @books.refund(id)

        "window.location.reload()".html_safe
      end
    end
  end
end
