class ArticlesController < ApplicationController

    def index
        articles = Article.order('created_at DESC')
        render json: articles
    end
end
