class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new

  end

  def create
    @article = Article.create(title: params[:title], content: params[:content])
    redirect_to '/articles'
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    article.update(title: params[:title], content: params[:content])
    redirect_to '/articles'
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to '/articles'
  end
end
