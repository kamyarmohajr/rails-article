class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article created successfully."
      redirect_to article_path(@article)
    else
      p @article.errors
      render :new
    end
  end

  def update
    if @article.update(article_params)
       flash[:notice] = "Article updated successfully."
       redirect_to articles_path
    else
      render :edit
    end
  end

  def destroy
    if @article.destroy!
      flash[:notice] = "Article deleted successfully"
      redirect_to articles_path
    else
      render :index
      flash[:error] = "Somthing went wrong !!!"
    end
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:user_id, :title, :description)
    end
end