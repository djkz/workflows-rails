module Workflows
  module Store
    class Show < Base
      def item
        @item = @books.find(id)
      end
    end
  end
end
