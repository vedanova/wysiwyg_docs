class CreateWysiwygDocsArticles < ActiveRecord::Migration
  def change
    create_table :wysiwyg_docs_articles do |t|
      t.text :content
      t.references :topic
      t.string :title

      t.timestamps
    end
    add_index :wysiwyg_docs_articles, :topic_id
  end
end
