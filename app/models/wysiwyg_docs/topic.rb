module WysiwygDocs
  class Topic < ActiveRecord::Base
    attr_accessible :name
    has_many :articles
  end
end
