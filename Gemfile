source "http://rubygems.org"

# Declare your gem's dependencies in wysiwyg_docs.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# jquery-rails is used by the dummy application
gem "jquery-rails"

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
gem 'debugger'
gem 'haml'


group :test do
  gem "cucumber-rails", ">= 1.3.0", :require => false
  gem "capybara", ">= 1.1.2"
  gem "machinist", ">= 2.0"
  gem "rspec-rails", ">= 2.11.0"
  gem "database_cleaner"
end

group :development do
  gem 'haml-rails'
end