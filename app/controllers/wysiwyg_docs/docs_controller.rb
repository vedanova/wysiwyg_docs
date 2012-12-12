require_dependency "wysiwyg_docs/application_controller"

module WysiwygDocs
  class DocsController < ApplicationController
    def index

      Doc.content

    end
  end
end
