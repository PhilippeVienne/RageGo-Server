json.array!(@games) do |game|
  json.extract! game, :id
  json.extract! game, :whites_id
  json.extract! game, :blacks_id
  json.url game_url(game, format: :json)
end
