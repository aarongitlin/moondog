class ApplicationController < ActionController::Base
  protect_from_forgery

  # -- Register refinery_user? as a helper method
  # For some reason this is missed by refinerycms-authentication-2.0.3/lib/refinery/authenticated_system.rb
  helper_method :refinery_user?
end
