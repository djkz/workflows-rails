module Domains
  module Library
    class Books
      attr_accessor :user

      def initialize(user)
        self.user = user
      end

      def all
        Book.includes(:purchases).where(purchases: { user: user })
      end
    end
  end
end
