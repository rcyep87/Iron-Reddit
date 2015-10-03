json.array!(@links) do |link|
  json.extract! link, :id, :subject, :post, :user_id
  json.url link_url(link, format: :json)
end
