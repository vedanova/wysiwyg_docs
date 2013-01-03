$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wysiwyg_docs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wysiwyg_docs"
  s.version     = WysiwygDocs::VERSION
  s.authors     = ["Christoph Klocker"]
  s.email       = ["christoph[at]vedanova.com"]
  s.homepage    = "https://github.com/vedanova/wysiwyg_docs"
  s.summary     = "Rails Engine that allows to add documentation to your Rails app"
  s.description = "Rails Engine that allows to add documentation to your Rails app"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 3.2.8"
  s.add_dependency "jquery-rails"
  s.add_dependency "haml"
  s.add_dependency "sass-rails", '>= 3.2'
  s.add_dependency "bootstrap-sass", ">= 2.1.0.0"
  s.add_dependency "bootstrap-wysihtml5-rails"
  s.add_dependency "friendly_id", "~> 4.0.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "cucumber-rails", ">= 1.3.0"
  s.add_development_dependency "capybara", ">= 1.1.2"
  s.add_development_dependency "machinist", ">= 2.0"
  s.add_development_dependency "rspec-rails", ">= 2.11.0"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "haml-rails"

end
