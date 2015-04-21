json.array!(@nodes) do |node|
  json.extract! node, :id, :game_id, :player_id
  json.url node_url(node, format: :json)
end
