class ArticleController < ApplicationController
  def index
    @articles=Article.all
    #@articles = Article.page(params[:page]).per(2)
    #@articles = Article.paginate(page: params[:page], per_page: 2)
  end

  def new
    @article=Article.new
  end

  def create
    @article=Article.new(article_params)
    @article.user=User.find(2)
    if @article.save
      redirect_to all_articles_path(@article)
    else
      render "new"
    end
  end


  def edit
    @article=Article.find(params[:id])
  end

  def update
    @article= Article.find(params[:id])
    if @article.update(article_params)
      redirect_to all_articles_path(@article)
    else
      render "edit"
    end
  end
  def show
    @article=Article.find(params[:id])
  end
  
  def article_params
    params.require(:article).permit(:name)
  end
end
