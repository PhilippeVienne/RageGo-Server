json.array! @nodes do |node|
  json.extract! node, :id, :player_id, :data, :created_at
end
