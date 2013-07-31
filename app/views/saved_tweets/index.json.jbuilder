json.array!(@saved_tweets) do |saved_tweet|
  json.extract! saved_tweet, :user_id, :tweet_id
  json.url saved_tweet_url(saved_tweet, format: :json)
end