class MagazinesController < ApplicationController
  def index
    @articles = Article.paginate(:page => params[:page], :per_page => 1)
  end
end
