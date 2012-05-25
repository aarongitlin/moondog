Devise.setup do |config|
  # Set stretches to default value 10 to avoid timeout on user create
  config.stretches = 10
end
