json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :status
  json.url tweet_url(tweet, format: :json)
end
