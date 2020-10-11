module Domains
  module Reading
    class Page < Page
      include Domains::Display

      @@template = "books/page"
    end
  end
end
