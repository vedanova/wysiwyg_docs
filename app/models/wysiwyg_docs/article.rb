module WysiwygDocs
  class Article < ActiveRecord::Base
    belongs_to :topic
    attr_accessible :content, :title

    extend FriendlyId
    friendly_id :title, use: :slugged
  end
end
