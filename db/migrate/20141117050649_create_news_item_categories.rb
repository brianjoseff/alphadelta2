class CreateNewsItemCategories < ActiveRecord::Migration
  def change
    create_table :news_item_categories do |t|
      t.string :title

      t.timestamps
    end
  end
end
