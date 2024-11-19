class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  
  #render plain: params[:article].inspect
  # @article.save
  # redirect_to article_path(@article)

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Succesfully Added."
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def article_params
     params.require(:article).permit(:title,:description)
  end

  def articles_show
       
  end

end
