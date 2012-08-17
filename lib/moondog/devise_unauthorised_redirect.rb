module Moondog
  class CustomFailure < Devise::FailureApp
    # When a user hits a page that they're unauthorised to access, redirect them to the spree login page
    def redirect_url
      spree.login_path
    end

    # Visiting /refinery results in a return_to path of "//refinery", which when redirected to,
    # lands the user at http://refinery. To avoid this, remove the duplicate '/'.
    def store_location!
      session["#{scope}_return_to"] = attempted_path.gsub('//', '/') if request.get? && !http_auth?
    end

		# Issue with double slashes with https requests in production (at least with heroku).
		# Found this fix @ https://github.com/spree/spree/commit/1bd585a6a0fb93e62e4cfe8487d5cdf40aa42d7b
		# testing to see if 

		def ensure_proper_protocol
      return true if ssl_allowed?
      if ssl_required? && !request.ssl? && ssl_supported?
        redirect_to "https://" + request.host + request.fullpath.sub("//", "/")
        flash.keep
      elsif request.ssl? && !ssl_required?
        redirect_to "http://" + request.host + request.fullpath.sub("//", "/")
        flash.keep
      end
		end

    def respond
      if http_auth?
        http_auth
      else
        redirect
      end
    end
  end
end
