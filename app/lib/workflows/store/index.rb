module Workflows
  module Store
    class Index < Base
      def items
        @items = Book.all
      end
    end
  end
end
