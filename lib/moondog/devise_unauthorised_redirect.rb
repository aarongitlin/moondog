# When a user hits a page that they're unauthorised to access,
# redirect them to the spree login page

module Moondog
  class CustomFailure < Devise::FailureApp
    def redirect_url
      spree.login_path
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
