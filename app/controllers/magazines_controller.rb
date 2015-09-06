class MagazinesController < ApplicationController
  def index
    @articles = Article.paginate(:page => params[:page], :per_page => 3)
    respond_to do |format|
      format.html
      format.js
      format.json
    end
  end
end
