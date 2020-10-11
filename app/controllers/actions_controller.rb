class ActionsController < ApplicationController
  def run
    action = "Workflows::#{params[:exec]}".constantize.new(params, current_user)

    @result = action.run
    render js: @result
  end
end
