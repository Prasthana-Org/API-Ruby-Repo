class UsersController < ApplicationController
    def index
        @articles=User.all
        render json:@articles
    end
    def create
        
        @article=User.new(params.require(:article).permit(:username,:email))
        @article.save
        redirect_to @article
    end
    def show
        @article=User.find(params[:id])
        render json:@article
    end
    def destroy
        @article=User.find(params[:id])
        @article.destroy
    end
    def update
        @article=User.find(params[:id])
        @article.update(params.require(:article).permit(:username,:email))
        redirect_to @article
    end
end
