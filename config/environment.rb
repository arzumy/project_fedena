RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')
require "pdf/writer"
require "pdf/simpletable"
Rails::Initializer.run do |config|
  config.gem "declarative_authorization"
  config.gem 'prawn', :version=>'~>0.8.4'

  config.time_zone = 'UTC'
end
