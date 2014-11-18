class NewsItemCategory < ActiveRecord::Base
  has_many :news_item_categories
end
