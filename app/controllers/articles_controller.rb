class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @article = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

    def new
    @article = Article.new
  end

    def edit
    @article = Article.find(params[:id])
  end

  def create
    @article =Article.new(params[:article])
    @article.save
    redirect_to article_path(@article)
  end

  def update
    @article = Article.find(params[:id])
    @article.update(params[:article])
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end


  private

  def article_params
    params.require(:article).permit(:title, :content)
end
