module Workflows
  module Store
    class Base < Workflows::Base
      def initialize(params, current_user)
        super(params, current_user)
        @books = Domains::BookPurchases.new(current_user)
      end
    end
  end
end
