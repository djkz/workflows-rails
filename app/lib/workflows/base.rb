module Workflows
  class Base
    attr_accessor :current_user, :cookies, :id

    def initialize(params, options)
      self.current_user = options[:user]
      self.cookies = options[:cookies]
      self.id = params[:id]
      @params = params
    end
  end
end
