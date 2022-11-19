class ArticlesController < ApplicationController

  def about
    render plain: "About Articles"
  end

  def index
    @articles=Article.all
    render json: @articles
  end

  def create
   @article =Article.new(article_params)
   if @article.save
     render json: @article, status: :ok
   else
    render json: {error: "#{article} is not created"}
    render 'new'
   end
  end

  def new
    @article=Article.new()
  end

  def show
    @article = Article.find(params[:id])
    render json: @article
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    # @article.save
    render json: @article
  end

    def destroy
      @article=Article.find(params[:id])
      @article.destroy
    end

    private

    def article_params
      params.require(:article).permit(:title, :description, :user_id)
    end

end
