# When a user hits a page that they're unauthorised to access,
# redirect them to the spree login page

module Moondog
  class CustomFailure < Devise::FailureApp
    def redirect_url
      spree.login_path
    end

    def store_location!
      session["#{scope}_return_to"] = attempted_path.gsub('//', '/') if request.get? && !http_auth?
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
