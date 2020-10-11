module Workflows
  module Library
    class Page < Base
      def item
        book = @books.find(id)
        @item = book.page(@params[:page])
      end
    end
  end
end
