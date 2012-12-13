require_dependency "wysiwyg_docs/application_controller"

module WysiwygDocs
  class DocsController < ApplicationController

    def index
      @doc = Doc.first || Doc.new
      @topics = Topic.all
    end

    def create
      @doc = Doc.new(params[:doc])
      if @doc.save!
        redirect_to docs_path, :notice => "Successfully updated"
      end
    end

    def update
      @doc = Doc.find(params[:id])
      if @doc.update_attributes(params[:doc])
        redirect_to docs_path, :notice => "Successfully updated"
      end
    end

  end
end
