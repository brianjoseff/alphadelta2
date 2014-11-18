class AddNewsItemCategoryToNewsItem < ActiveRecord::Migration
  def change
    add_column :news_items, :news_item_category_id, :integer
  end
end
