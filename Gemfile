source 'https://rubygems.org'

gem 'rails', '3.2.3'

# TODO: Remove sqlite3 in development and use postgres exclusively
group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'


# Spree
gem 'spree'
gem 'spree_usa_epay'
gem 'spree_skrill'

# Refinery
gem 'refinerycms', '~> 2.0.0'
gem 'refinerycms-blog', '~> 2.0.0'
gem 'refinerycms-portfolio', :git => 'git://github.com/resolve/refinerycms-portfolio.git', :branch => '2-0-stable'
gem 'refinerycms-inquiries', '~> 2.0.0'

gem 'refinerycms-beer_locations', :path => 'vendor/extensions'

# Misc
gem 'gmaps4rails'
