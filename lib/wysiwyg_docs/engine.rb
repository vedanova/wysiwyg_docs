module WysiwygDocs
  mattr_accessor :sidebar_title, :page_title, :index_title, :sidebar_root_title

  class Engine < ::Rails::Engine
    isolate_namespace WysiwygDocs

    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
      g.fixture_replacement :machinist
      g.view_specs false
      g.helper_specs false
      g.stylesheets false
      g.helper false
    end
  end
end
