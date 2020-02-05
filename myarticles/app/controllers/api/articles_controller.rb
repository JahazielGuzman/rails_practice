
        class Api::ArticlesController < ApplicationController
            def index
                articles = Article.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'loaded articles', data: articles}, status: :ok
            end
        end