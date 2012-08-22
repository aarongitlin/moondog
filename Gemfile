source 'https://rubygems.org'

gem 'rails', '3.2.3'

# TODO: Remove sqlite3 in development and use postgres exclusively
group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
	gem 'fog'

end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

# These Gems are required in production for Heroku asset compilation
gem 'sass-rails',   '~> 3.2.3'
gem 'coffee-rails', '~> 3.2.1'

gem 'jquery-rails'

# group :test, :development do
#   gem 'rspec-rails'
#   gem 'capybara'
# end
# group :test do
#   gem 'factory_girl_rails', '~> 1.7.0'
#   gem 'factory_girl', '~> 2.6.4'
#   gem 'faker'
# end


# Spree
gem 'spree'
gem 'spree_usa_epay'
gem 'spree_skrill'
# gem "spree_auth_devise", :git => "git://github.com/spree/spree_auth_devise"

# Refinery
gem 'spree_refinery_auth', :git => "https://github.com/maleko/spree_refinery_auth.git"

gem 'refinerycms-core', '~> 2.0.0'
gem 'refinerycms-dashboard', '~> 2.0.0'
gem 'refinerycms-images', '~> 2.0.0'
gem 'refinerycms-pages', '~> 2.0.0'
gem 'refinerycms-resources', '~> 2.0.0'
gem 'refinerycms-settings', '~> 2.0.0'
gem 'refinerycms-blog', '~> 2.0.0'
gem 'refinerycms-portfolio', :git => 'git://github.com/resolve/refinerycms-portfolio.git', :branch => '2-0-stable'
gem 'refinerycms-inquiries', '~> 2.0.0'
gem 'refinerycms-beer_locations', :path => 'vendor/extensions'
gem 'refinerycms-brewing_beers', :path => 'vendor/extensions'



# Misc
gem 'gmaps4rails'
gem 'skeleton-rails'
gem 'newrelic_rpm'
gem 'journey'
gem "devise-encryptable"
gem 'ie_conditional_tag'

# Debug
# gem 'linecache19', '~> 0.5.13'
# gem 'ruby-debug-base19', '~> 0.11.26'
# gem 'ruby-debug19', :require => 'ruby-debug'

