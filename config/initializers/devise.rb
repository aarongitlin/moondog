require 'moondog/devise_unauthorised_redirect'

Devise.setup do |config|
  config.warden do |manager|
    manager.failure_app = Moondog::CustomFailure
  end
end
