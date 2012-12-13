# desc "Explaining what the task does"
# task :wysiwyg_docs do
#   # Task goes here
# end
desc "copy initializer to app"
task :wysiwyg_docs do
  copy_file 'lib/rails/generators/initializer.rb', 'config/initializers/cheese.rb'
end


def self.source_root
  File.join(File.dirname(__FILE__), 'templates')
end
