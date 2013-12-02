json.array!(@profiles) do |profile|
  json.extract! profile, :name, :description, :picture, :profile_id
  json.url profile_url(profile, format: :json)
end
