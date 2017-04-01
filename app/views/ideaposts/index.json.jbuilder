json.array!(@ideaposts) do |ideapost|
  json.extract! ideapost, :id, :content, :user_id
  json.url ideapost_url(ideapost, format: :json)
end
