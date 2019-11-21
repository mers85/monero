class ApplicationController < ActionController::Base
  # To allow only json request
  protect_from_forgery with: :null_session, if: Proc.new {|c| c.request.format.json? }
  def index
    render template: 'application'
  end
end
