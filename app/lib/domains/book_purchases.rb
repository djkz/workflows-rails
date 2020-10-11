module Domains
  class BookPurchases
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

    class UnpurchasedBook < Book
      include Domains::Display

      attr_accessor :user
      @@template = "books/unpurchased"

      def buy!
        purchase = Purchase.find_or_initialize_by(user: user, book: self)
        raise StandardError.new "Book Already Purchased!" if purchase.persisted?

        purchase.save!
        self.becomes PurchasedBook
      end
    end

    class PurchasedBook < Book
      attr_accessor :user
      include Domains::Display

      @@template = "books/purchased"

      def refund!
        purchase = Purchase.find_by(user: user, book: self)
        purchase.destroy

        self.becomes UnpurchasedBook
      end
    end
  end
end
