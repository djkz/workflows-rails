module Workflows
  module Store
    class Buy < Base
      def run
        @books.buy(id)

        "window.location.reload()".html_safe
      end
    end
  end
end
