json.array!(@users) do |user|
  json.extract! user, :id, :name, :loggedin
  json.url user_url(user, format: :json)
end
