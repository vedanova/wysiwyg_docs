class CreateWysiwygDocsDocs < ActiveRecord::Migration
  def change
    create_table :wysiwyg_docs_docs do |t|
      t.text :content

      t.timestamps
    end
  end
end
