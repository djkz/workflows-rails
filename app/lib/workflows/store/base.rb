module Workflows
  module Store
    class Base < Workflows::Base
      def initialize(params, options)
        super(params, options)
        @books = Domains::Shopping::Books.new(current_user)
      end
    end
  end
end
