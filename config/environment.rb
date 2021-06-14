require 'bundler/setup'
require 'yaml'
require 'active_record'

Bundler.require

Dir[File.join(File.dirname(__FILE__), '../app/models', '*.rb')].each do |f|
  require f
end
Dir[File.join(File.dirname(__FILE__), '../lib/support', '*.rb')].each do |f|
  require f
end

DB =
  ActiveRecord::Base.establish_connection(
    { adapter: 'sqlite3', database: 'db/tvshows.db' },
  )

ActiveRecord::Migration.verbose = false if ENV['ACTIVE_RECORD_ENV'] == 'test'
