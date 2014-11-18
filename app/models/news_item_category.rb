class NewsItemCategory < ActiveRecord::Base
  has_many :news_items
end
