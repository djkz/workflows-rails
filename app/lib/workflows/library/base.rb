module Workflows
  module Library
    class Base < Workflows::Base
      def initialize(params, options)
        super(params, options)
        @books = Domains::Library::Books.new(current_user)
      end
    end
  end
end
