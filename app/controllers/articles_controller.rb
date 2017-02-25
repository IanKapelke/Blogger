class ArticlesController < ApplicationController
  include ArticlesHelper
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    #article_params is helper function
    @article = Article.new(article_params)

# can alternatively be done this way
#    @article = Article.new
#    @article.title = params[:article][:title]
#    @article.body = params[:article][:body]

    @article.save
    redirect_to article_path(@article)
  end
end
