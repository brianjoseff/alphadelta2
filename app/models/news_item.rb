class NewsItem < ActiveRecord::Base
  belongs_to :news_item_category
end
