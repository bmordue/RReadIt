json.array!(@users) do |user|
  json.extract! user, :name, :email, :twitter_oauth_token, :twitter_oauth_token_secret
  json.url user_url(user, format: :json)
end