module WysiwygDocs
  class Doc < ActiveRecord::Base
    attr_accessible :content
    SIDEBAR_TITLE = 'Sidebar'
  end
end
