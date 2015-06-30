json.array!(@gatherings) do |gathering|
  json.extract! gathering, :id, :location, :start_at, :user_id
  json.url gathering_url(gathering, format: :json)
end
