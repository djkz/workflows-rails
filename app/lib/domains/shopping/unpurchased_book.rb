module Domains
  module Shopping
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
  end
end
