class PagesController < ApplicationController
  def index
    @news_items = NewsItem.all
  end

  def history
  end

  def albums
  end

  def alumni_news
  end
end
