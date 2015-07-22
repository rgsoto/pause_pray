json.array!(@prayers) do |prayer|
  json.extract! prayer, :id
  json.url prayer_url(prayer, format: :json)
end
