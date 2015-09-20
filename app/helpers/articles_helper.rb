module ArticlesHelper
  def article_author(article)
    if article.user.nil?
      "Eugene Tkachenko"
    else
      "#{article.user.name} #{article.user.last_name}"
    end
  end
end
