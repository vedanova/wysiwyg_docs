class AddPositionToArticles < ActiveRecord::Migration
  def change
    add_column :wysiwyg_docs_articles, :position, :integer
    add_index :wysiwyg_docs_articles, :position
  end
end
