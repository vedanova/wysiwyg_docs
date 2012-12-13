module WysiwygDocs
  class Article < ActiveRecord::Base
    belongs_to :topic
    attr_accessible :content, :title
  end
end
