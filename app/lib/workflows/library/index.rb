module Workflows
  module Library
    class Index < Base
      def items
        Book.all
      end
    end
  end
end
