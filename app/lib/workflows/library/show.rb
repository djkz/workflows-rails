module Workflows
  module Library
    class Show < Base
      def item
        @item = @books.find(id)
      end
    end
  end
end
