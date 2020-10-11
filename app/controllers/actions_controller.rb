class ActionsController < ApplicationController
  def run
    action = "Workflows::#{params[:exec]}".constantize.new(params, { user: current_user, cookies: cookies })

    @result = action.run
    render js: @result
  end
end
