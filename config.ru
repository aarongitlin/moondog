# This file is used by Rack-based servers to start the application.
require 'rubygems'
require 'bundler'

$stdout.sync = true
Bundler.require(:rack)

port = (ARGV.first || ENV['PORT'] || 3000).to_i
env = ENV['RACK_ENV'] || 'development'

require 'em-proxy'
require 'logger'
require 'heroku-forward'

application = File.expand_path('../my_app.ru', __FILE__)
backend = Heroku::Forward::Backends::Thin.new(application: application, env: env)
proxy = Heroku::Forward::Proxy::Server.new(backend, { host: '0.0.0.0', port: port })
proxy.logger = Logger.new(STDOUT)
proxy.forward!

options = { application: File.expand_path('../my_app.ru', __FILE__) }

# branch to desable SSL depending of your environment
if ENV['THIN_SSL_ENABLED']
  options[:ssl] = true
  options[:ssl_verify] = true
  options[:ssl_cert_file] = ENV['THIN_SSL_CERT_FILE']
  options[:ssl_key_file] = ENV['THIN_SSL_KEY_FILE']
end

backend = Heroku::Forward::Backends::Thin.new(options)