module Domains
  module Reading
    class ReadableBook < Book
      include Domains::Display

      @@template = "books/readable"

      def page(index)
        self.pages.find_by(page_number: index).becomes Domains::Reading::Page
      end
    end
  end
end
