namespace :db do
  desc "create news categories"
  task :create_news_item_categories => :environment do

    NewsItemCategory.delete_all
    NewsItemCategory.reset_pk_sequence
    
    NewsItemCategory.create!(:name => "General", id: 0)
    NewsItemCategory.create!(:name => "Undergrad", id: 1)
    NewsItemCategory.create!(:name => "Alumni", id: 2)

    
  end
end