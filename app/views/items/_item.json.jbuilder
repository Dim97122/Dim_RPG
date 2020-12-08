json.extract! item, :id, :name, :type, :attack_points, :defense_points, :created_at, :updated_at
json.url item_url(item, format: :json)
