json.array!(@drinking_games) do |drinking_game|
  json.extract! drinking_game, :id, :name, :number_of_people, :supplies
  json.url drinking_game_url(drinking_game, format: :json)
end
