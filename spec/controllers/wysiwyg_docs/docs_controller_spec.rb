require 'spec_helper'

module WysiwygDocs
  describe DocsController do
  
    describe "GET 'index'" do
      it "returns http success" do
        get 'index'
        response.should be_success
      end
    end
  
  end
end
