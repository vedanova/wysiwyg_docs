class AddFriendlyIdColumns < ActiveRecord::Migration
  def up
    add_column :wysiwyg_docs_articles, :slug, :string
    add_column :wysiwyg_docs_topics, :slug, :string

    add_index :wysiwyg_docs_articles, :slug, unique: true
    add_index :wysiwyg_docs_topics, :slug, unique: true
  end

  def down
    remove_column :wysiwyg_docs_articles, :slug
    remove_column :wysiwyg_docs_topics, :slug
  end
end
