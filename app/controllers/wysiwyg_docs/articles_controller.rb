require_dependency "wysiwyg_docs/application_controller"

module WysiwygDocs
  class ArticlesController < ApplicationController
    before_filter :setup_topic

    # GET /articles
    # GET /articles.json
    def index
      @articles = Article.all
  
      respond_to do |format|
        format.html # index.html.erb
      end
    end
  
    # GET /articles/1
    # GET /articles/1.json
    def show
      @article = Article.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
      end
    end
  
    # GET /articles/new
    # GET /articles/new.json
    def new
      @article = Article.new(content: 'Enter text...')
      @topic = Topic.find(params[:topic_id])

      respond_to do |format|
        format.html { render :show }
      end
    end

    # POST /articles
    # POST /articles.json
    def create
      @article = Article.new(params[:article])
      @article.topic = @topic

      respond_to do |format|
        if @article.save
          format.html { redirect_to [@topic, @article], notice: 'Article was successfully created.' }
        else
          format.html { redirect_to [@topic, @article], error: 'Article could not be created.' }
        end
      end
    end
  
    # PUT /articles/1
    # PUT /articles/1.json
    def update
      @article = Article.find(params[:id])
  
      respond_to do |format|
        if @article.update_attributes(params[:article])
          format.html { redirect_to [@topic, @article], notice: 'Article was successfully updated.' }
        else
          format.html { redirect_to [@topic, @article], notice: 'Article could not be updated.' }
        end
      end
    end
  
    # DELETE /articles/1
    # DELETE /articles/1.json
    def destroy
      @article = Article.find(params[:id])
      @article.destroy
  
      respond_to do |format|
        format.html { redirect_to articles_url }
        format.json { head :no_content }
      end
    end
    private

    def setup_topic
      @topic = Topic.find(params[:topic_id])
    end
  end
end
