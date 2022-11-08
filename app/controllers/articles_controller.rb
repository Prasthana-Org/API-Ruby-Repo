class ArticlesController < ApplicationController
    def index
        @articles=Article.all
        render json:@articles
    end
    def create
        @article=Article.new(params.require(:article).permit(:title,:discription))
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
        @article=Article.find(parmas[:id])
        @article.update(params.require(:article).permit(:title,:discreption))
        @article.save
        redirect_to @article
    end
end
