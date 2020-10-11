module Workflows
  module Library
    class Index < Base
      def items
        @books.all
      end
    end
  end
end
