json.array!(@alumni_news) do |alumni_news|
  json.extract! alumni_news, :id, :title, :content
  json.url alumni_news_url(alumni_news, format: :json)
end
