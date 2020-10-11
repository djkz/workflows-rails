class HelloController < ApplicationController
  def login
    @login = Services::Auth::Login.new
  end
end
