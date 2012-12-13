require 'rails/generators'
require 'rails/generators/migration'

class WysiwygDocsGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  def self.source_root
    File.join(File.dirname(__FILE__), 'templates')
  end

  def self.next_migration_number(dirname) #:nodoc:
    if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end


  # Every method that is declared below will be automatically executed when the generator is run
  desc "copy initializer"
  def copy_initializer_file
    copy_file 'initializer.rb', 'config/initializers/wysiwyg_docs.rb'
  end

  desc "copies migrations to your application"
  def copy_migrations
    rake("wysiwyg_docs:install:migrations")
  end

end
