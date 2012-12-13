require_dependency "wysiwyg_docs/application_controller"

module WysiwygDocs
  class DocsController < ApplicationController

    def index
      @doc = Doc.first
      @topics = Topic.all
    end

    def update
      @doc = Doc.find(params[:id])
      if @doc.update_attributes(params[:doc])
        redirect_to docs_path
      end
    end

  end
end
