class MagazinesController < ApplicationController
  def index
    if params[:category].blank?
      @articles = Article.paginate(:page => params[:page], :per_page => 3)
      respond_to do |format|
        format.html
        format.js
        format.json
      end
    else
      @category = Category.find_by_name(params[:category])
      if (@category.articles.nil? rescue true)
        redirect_to root_url
        else
      @articles = @category.articles.paginate(:page => params[:page], :per_page => 3)
      end
    end
  end
end
