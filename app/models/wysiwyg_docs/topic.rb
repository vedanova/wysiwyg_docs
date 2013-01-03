module WysiwygDocs
  class Topic < ActiveRecord::Base
    attr_accessible :name
    has_many :articles

    extend FriendlyId
    friendly_id :name, use: :slugged
  end
end
