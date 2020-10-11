module Domains
  module Store
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
