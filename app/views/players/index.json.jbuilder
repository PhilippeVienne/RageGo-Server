json.array!(@players) do |player|
  json.extract! player, :id
  json.extract! player, :code
  json.extract! player, :playing
  json.url player_url(player, format: :json)
end
