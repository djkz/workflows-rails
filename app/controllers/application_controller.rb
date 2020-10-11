class ApplicationController < ActionController::Base
  before_action :load_defaults
  helper_method :signed_in?
  helper_method :current_user

  # load the workflow view
  def show
    name = params[:name]
    action = params[:id] ? "show" : "index"

    @page = ("Workflows::#{name.to_s.capitalize}::#{action.capitalize}").constantize.new(params, current_user)

    render :template => "#{name}/#{action}"
  end

  def current_user
    id = cookies.signed[:current_user]
    @current_user ||= User.find(id)
  end

  def signed_in?
    current_user.present?
  end

  def load_defaults
    @logout = Services::Auth::Logout.new
  end
end
