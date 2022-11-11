class ArticlesController < ApplicationController
    def index
        @articles=Article.all
        render json:@articles
    end
    def create
        @article=Article.new(params.require(:article).permit(:title,:discription,:user_id))
        @article.save
        redirect_to @article
    end
    def show
        @article=Article.find(params[:id])
        render json:@article
    end
    def destroy
        @article=Article.find(params[:id])
        @article.destroy
    end
    def update
        @article=Article.find(params[:id])
        @article.update(params.require(:article).permit(:title,:discreption,:user_id))
        @article.save
        redirect_to @article
    end
end
