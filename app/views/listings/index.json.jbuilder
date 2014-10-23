json.array!(@listings) do |listing|
  json.extract! listing, :id, :name, :quality, :desc, :picture, :game, :price, :user_id
  json.url listing_url(listing, format: :json)
end
