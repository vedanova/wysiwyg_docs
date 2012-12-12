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

  s.add_dependency "rails", "~> 3.2.9"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
