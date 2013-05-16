# SimpleCov and https://coveralls.io
require 'simplecov'
require 'coveralls'
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

# Include RPC library
require File.join(File.dirname(__FILE__), '../lib/rpc')

# Include factories and support
Dir.glob(File.join(File.dirname(__FILE__), 'support/**', '*.rb')) { |f| require f }
