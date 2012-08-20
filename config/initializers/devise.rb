require 'moondog/devise_unauthorised_redirect'



Devise.setup do |config|
  config.warden do |manager|
    manager.failure_app = Moondog::CustomFailure
  end
	config.authentication_keys = [ :email ]
	config.router_name = :spree
end
