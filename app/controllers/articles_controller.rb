class ArticlesController < ApplicationController
  before_action :get_article, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to :back
      flash[:notice] = "Article successfully created"
    else
      redirect_to admin_path
    end

  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  private
  def get_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content, :top_image, :content_image, :main_image, :user_id)
  end
end
