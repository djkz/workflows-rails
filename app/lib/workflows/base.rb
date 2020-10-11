module Workflows
  class Base
    attr_accessor :current_user, :id

    def initialize(params, user)
      self.current_user = user
      self.id = params[:id]
      @params = params
    end
  end
end
