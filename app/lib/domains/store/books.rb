module Domains
  module Store
    class Books
      attr_accessor :user

      def initialize(user)
        self.user = user
      end

      def find(id)
        book = Book.find(id)
        purchase = Purchase.find_by(user: user, book: book)

        book = purchase ?
          (book.becomes PurchasedBook) :
          (book.becomes UnpurchasedBook)
        book.user = user
        book
      end

      def buy(id)
        book = find(id)
        book.buy!
      end

      def refund(id)
        book = find(id)
        book.refund!
      end
    end
  end
end
