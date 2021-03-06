source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'pg'
end

group :production do
  gem 'pg'
	gem 'fog'
  gem 'thin'

end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '~> 2.0.0'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

# Refinery CMS
gem 'refinerycms', :git => 'git://github.com/refinery/refinerycms.git', :branch => '2-0-stable'

# Specify additional Refinery CMS Extensions here (all optional):
gem 'refinerycms-i18n', '~> 2.0.0'
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

gem 'spree', :git => 'git://github.com/spree/spree.git', :branch => '1-2-stable'
gem 'spree_usa_epay'
gem 'spree_skrill'
gem 'spree_paypal_express', :git => 'git://github.com/spree/spree_paypal_express.git', :branch => '1-2-stable'
gem 'spree_i18n', :git => 'git://github.com/spree/spree_i18n.git', :branch => '1-0-stable'
gem 'deface'


gem 'spree-refinerycms-authentication', :git => 'git://github.com/adrianmacneil/spree-refinery-authentication.git'
gem 'thin'
gem 'ie_conditional_tag'
gem 'gmaps4rails'
gem 'skeleton-rails'
gem 'rake', '~> 10.0.3'

gem 'execjs'
gem 'therubyracer'

gem 'refinerycms-videos', :path => 'vendor/extensions'

gem 'newrelic_rpm'

# To avoid heroku's 60s timeout launch bulls
gem "heroku-forward", "~> 0.2"
gem "em-proxy", ">= 0.1.8"
# Hirefireapp to manage web dynos and in future, workers.
gem 'hirefireapp'

# Hopefully help with occasional Heroku H12 timeout errors
gem "rack-timeout"
