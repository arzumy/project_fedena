RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem "declarative_authorization", :version => '~>0.4.1'
  config.gem 'prawn',                     :version => '~>0.8.4'
  config.gem 'pdf-writer',                :version => '~>1.1.8', :lib => 'pdf/writer'
  config.gem 'pdf-writer',                :version => '~>1.1.8', :lib => 'pdf/simpletable'

  config.time_zone = 'UTC'
end
