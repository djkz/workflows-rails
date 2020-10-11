module Domains
  module Reading
    class Books
      attr_accessor :user

      def initialize(user)
        self.user = user
      end

      def find(id)
        book = all.find(id)
        book.becomes Domains::Reading::ReadableBook
      end

      def all
        Book.includes(:purchases).where(purchases: { user: user })
      end
    end
  end
end
