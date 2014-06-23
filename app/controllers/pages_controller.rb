class PagesController < ApplicationController
  def index
    @news_items = NewsItem.last(5)
  end

  def history
  end

  def albums
  end

  def alumni_news
  end
end
