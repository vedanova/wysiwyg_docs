module WysiwygDocs
  class Doc < ActiveRecord::Base
    attr_accessible :content
  end
end
