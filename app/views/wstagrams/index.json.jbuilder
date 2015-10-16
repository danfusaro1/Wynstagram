json.array!(@wstagrams) do |wstagram|
  json.extract! wstagram, :id, :description, :picture
  json.url wstagram_url(wstagram, format: :json)
end
