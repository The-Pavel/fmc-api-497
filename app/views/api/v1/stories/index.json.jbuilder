json.stories do
  json.array! @stories do |story|
    json.extract! story, :id, :title, :content, :image
    json.date story.created_at.strftime("%F")
  end
end
