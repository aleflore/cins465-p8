json.array!(@comments) do |comment|
  json.extract! comment, :user_name, :body, :idea_id
  json.url comment_url(comment, format: :json)
end
