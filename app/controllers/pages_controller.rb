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
  def undergraduate_news
    @adelphian = Adelphian.new
  end
  
  def undergraduate_news_pdf
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      #format.json { render json: @users }
      format.csv { render text: to_csv }
    end
  end
  
  def to_csv
     CSV.generate do |csv|
       csv << User.column_names
       User.all.each do |user|
         csv << user.attributes.values_at(*User.column_names)
       end
     end
   end
end
