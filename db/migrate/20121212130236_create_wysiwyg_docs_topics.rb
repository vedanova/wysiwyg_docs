class CreateWysiwygDocsTopics < ActiveRecord::Migration
  def change
    create_table :wysiwyg_docs_topics do |t|
      t.string :name

      t.timestamps
    end
  end
end
