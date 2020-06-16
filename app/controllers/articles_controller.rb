class ArticlesController < ApplicationController
    def show
       @article = Article.find(params[:id]) 
    end

    def index
        @article = Article.all
    end

    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        @article.save
        redirect_to article_path(@article)
        # redirect_to @article
    end

    def new
        
    end
end