class ArticlesController < ApplicationController
    def new 
        @article=Article.new
    end
    
    def create
        @article=Article.create(title: params[:article][:title])
        redirect_to "/articles/list"
    end

    def list 
        @articles=Article.all
    end

end
