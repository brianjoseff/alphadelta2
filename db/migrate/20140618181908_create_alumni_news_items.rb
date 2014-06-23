class CreateAlumniNewsItems < ActiveRecord::Migration
  def change
    create_table :alumni_news_items do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
