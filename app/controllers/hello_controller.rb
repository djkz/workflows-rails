class HelloController < ApplicationController
  def login
    @login = Domains::Auth::Login.new
  end
end
