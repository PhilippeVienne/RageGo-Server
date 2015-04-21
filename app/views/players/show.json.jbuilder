json.extract! @player, :id, :created_at, :updated_at, :playing, :code
json.games(@player.games_as_black+@player.games_as_white) do |game|
  json.(game, :id)
  json.url game_url(game, format: :json);
end

