namespace :db do
  desc "create news categories"
  task :create_news_item_categories => :environment do

    NewsItemCategory.delete_all
    NewsItemCategory.reset_pk_sequence
    
    NewsItemCategory.create!(:title => "General", id: 0)
    NewsItemCategory.create!(:title => "Undergrad", id: 1)
    NewsItemCategory.create!(:title => "Alumni", id: 2)

    
  end
end