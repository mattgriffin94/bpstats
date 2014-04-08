json.array!(@users) do |user|
  json.extract! user, :id, :name, :password, :frat_id, :games, :wins, :sinks
  json.url user_url(user, format: :json)
end
